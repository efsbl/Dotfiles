local wezterm = require("wezterm")

local config = {}

if wezterm.config_builder then
	config = wezterm.config_builder()
end

config.window_decorations = "RESIZE"
config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
config.window_padding = {
	bottom = 0,
	top = 5,
	left = 5,
	right = 5,
}

local theme = require("colors/kanagawa-dragon")
config.colors = theme

-- config.color_scheme = "Github Dark (Gogh)"
-- config.color_scheme = "Tokyo Night"
-- config.window_background_opacity = 0.9

config.font = wezterm.font_with_fallback({
	-- { family = "JetBrains Mono", scale = 1.1 },
	-- { family = "HurmitNerdFont", scale = 1.1 },
	-- { family = "SFMono Nerd Font", scale = 1.1 },
	{ family = "Liga SFMono Nerd Font", scale = 1.1 },
	{ family = "Symbols Nerd Font Mono", scale = 1.1 },
})
config.font_size = 15

return config
