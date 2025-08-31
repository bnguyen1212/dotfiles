local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- Use WSL as default
config.default_domain = "WSL:Ubuntu"

-- Font configuration
config.font = wezterm.font("JetBrains Mono", { weight = "Medium" })
config.font_size = 12

-- Color scheme
config.color_scheme = "Sequoia Moonlight"

-- Tab bar
config.hide_tab_bar_if_only_one_tab = true

return config
