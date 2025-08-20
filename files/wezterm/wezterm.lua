local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.color_scheme = "Apple Classic"
config.font_size = 14

config.max_fps = 120
config.animation_fps = 120
config.front_end = "WebGpu"
config.prefer_egl = true

config.default_cursor_style = "BlinkingBar"
config.cursor_blink_rate = 700
config.window_background_opacity = 0.95
config.window_decorations = "TITLE | RESIZE"
config.enable_tab_bar = false
config.warn_about_missing_glyphs = false

--[[ 
For windows WSL
config.default_domain = 'WSL:Ubuntu-18.04'
--]]

return config
