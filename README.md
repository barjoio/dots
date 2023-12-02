# dots

- opensuse-tumbleweed
- gnome
  - `https://github.com/ubuntu/gnome-shell-extension-appindicator`
  - `https://github.com/aunetx/blur-my-shell`
  - `https://github.com/pixel-saver/pixel-saver`
  - `https://github.com/yilozt/rounded-window-corners`
- alacritty
  - `zypper in alacritty`
- bat
  - `zypper in bat`
- git
  - delta: `zypper in git-delta`
  - `cat ~/.config/git/.gitconfig >> ~/.gitconfig`
- glow
  - `zypper in glow`
- tmux
  - `zypper in tmux`
  - tpm: `git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm`
- zsh
  - oh-my-zsh: `https://ohmyz.sh/#install`
  - nerd fonts: `https://www.nerdfonts.com/font-downloads`
  - powerlevel10k:
  ```sh
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git \
  ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
  ```
  - zsh-syntax-highlighting:
  ```sh
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git \
  ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
  ```

## Windows setup

```
user=foo
cat ~/.config/alacritty/alacritty.yml > /c/Users/$user/AppData/Roaming/alacritty/alacritty.yml
ln -s ~/.config/nvim /c/Users/$user/AppData/Local/nvim
```
