local wezterm = require("wezterm")

return {
	colors = {},
	window_padding = {
		left = 0,
		right = 0,
		top = 0,
		bottom = 0,
	},
	keys = {
		-- Make Option-Left equivalent to Alt-b which many line editors interpret as backward-word
		{ key = "LeftArrow", mods = "OPT", action = wezterm.action({ SendString = "\x1bb" }) },
		-- Make Option-Right equivalent to Alt-f; forward-word
		{ key = "RightArrow", mods = "OPT", action = wezterm.action({ SendString = "\x1bf" }) },
	},
	hide_tab_bar_if_only_one_tab = true,
	use_fancy_tab_bar = false,
	native_macos_fullscreen_mode = true,
}
