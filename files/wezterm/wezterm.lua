local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.color_scheme = "Apple Classic"
config.font_size = 13.3

--[[ 
For windows WSL
config.default_domain = 'WSL:Ubuntu-18.04'
--]]

return config
