local wezterm = require('wezterm')

if wezterm.config_builder then
  config = wezterm.config_builder()
end

return {
  cell_width = 0.9,
  colors = { cursor_bg = 'white' },
  default_prog = { 'C:\\Program Files\\Git\\bin\\bash.exe' },
  font = wezterm.font('RobotoMono Nerd Font', { weight = 'Medium' }),
  font_size = 12.0,
  window_background_opacity = 0.94,
  window_padding = { left = 30, right = 30, top = 30, bottom = 30 },
}
