local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.color_scheme = "Apple Classic"
config.font_size = 14

config.default_cursor_style = "BlinkingBar"
config.cursor_blink_rate = 700
config.window_background_opacity = 0.95
config.window_decorations = "TITLE | RESIZE"
config.enable_tab_bar = false

--[[ 
For windows WSL
config.default_domain = 'WSL:Ubuntu-18.04'
--]]

return config
