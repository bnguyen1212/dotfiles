local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- Use WSL as default
config.default_domain = "WSL:Ubuntu"

-- Font configuration
config.font = wezterm.font("JetBrains Mono", { weight = "Medium" })
config.font_size = 12

-- Color scheme
config.color_scheme = "Sequoia Moonlight"

-- set the background image
local config_dir = wezterm.config_dir

config.window_background_image = config_dir .. "/bg_image.jpg"

-- optional: adjust brightness, hue, saturation
config.window_background_image_hsb = {
	brightness = 0.1, -- 0 = very dark, 1 = normal
	hue = 1.0,
	saturation = 0.1,
}

-- Tab bar
config.hide_tab_bar_if_only_one_tab = true

return config
