package main

import (
	"bufio"
	"fmt"
	"os"
	"os/exec"
	"regexp"
	"strconv"
  "strings"
)

func main() {
	args := os.Args[1:]

	if len(args) == 0 {
		exit("no command given")
	}

	switch args[0] {
	case "c", "checkout":
		validateNumArgs(2)
		branches := run("git", "branch")
		re := regexp.MustCompile(".*" + args[1] + ".*")
		matchedBranches := re.FindAllString(branches, -1)
		if len(matchedBranches) == 0 {
			exit("0 matches")
		}
		if len(matchedBranches) > 1 {
			for i, branch := range matchedBranches {
				fmt.Println(i, branch)
			}
			inputText := read()
			branchIndex, err := strconv.Atoi(inputText)
			if err != nil || branchIndex >= len(matchedBranches) {
				exit("invalid branch index")
			}
			branchName := fmtBranch(matchedBranches[branchIndex])
			run("git", "checkout", branchName)
		} else {
			branchName := fmtBranch(matchedBranches[0])
			if branchName != args[1] {
				fmt.Printf("Switch to %s? ", branchName)
				if read() != "" {
					exit("Aborting")
				}
			}
			run("git", "checkout", branchName)
		}
	case "b", "branch":
		validateNumArgs(1)
		branches := strings.Split(run("git", "branch"), "\n")
		for i, branch := range branches {
			fmt.Println(i, branch)
		}
		inputText := read()
		branchIndex, err := strconv.Atoi(inputText)
		if err != nil || branchIndex >= len(branches) {
			exit("invalid branch index")
		}
		branchName := fmtBranch(branches[branchIndex])
		run("git", "checkout", branchName)
	case "help":
		validateNumArgs(1)
		fmt.Println("grit [c, checkout] <regexp>")
		fmt.Println("\tuse a regular expression to checkout a branch")
		fmt.Println("grit [b, branch]")
		fmt.Println("\tlist branches and checkout by index")
	default:
		exit("invalid command")
	}
}

func exit(msg ...string) {
	if len(msg) > 0 {
		fmt.Println("error:", strings.Join(msg, " "))
	}
	os.Exit(1)
}

func run(app string, args ...string) string {
	cmd := exec.Command(app, args...)

	stderr, _ := cmd.StderrPipe()
	stdout, _ := cmd.StdoutPipe()

	if err := cmd.Start(); err != nil {
		fmt.Println(err)
	}

	scanner := bufio.NewScanner(stderr)
	var hasErr bool
	for scanner.Scan() {
		fmt.Println(scanner.Text())
		hasErr = true
	}
	if hasErr {
		exit()
	}

	var out []string
	scanner = bufio.NewScanner(stdout)
	for scanner.Scan() {
		out = append(out, scanner.Text())
	}

	return strings.Join(out, "\n")
}

func read() string {
	scanner := bufio.NewScanner(os.Stdin)
	fmt.Print(":")
	scanner.Scan()
	return scanner.Text()
}

func validateNumArgs(n int) {
	if len(os.Args[1:]) != n {
		exit("incorrect number of args")
	}
}

func fmtBranch(branch string) string {
	f := strings.Fields(branch)
	return strings.TrimSpace(f[len(f)-1])
}
