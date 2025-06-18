local wezterm = require("wezterm")

local M = {}
M.keys = {
	{
		key = "LeftArrow",
		mods = "CTRL",
		actions = wezterm.action.ActivatePaneDirection("Left"),
	},
	{
		key = "h",
		mods = "CTRL",
		actions = wezterm.action.ActivatePaneDirection("Left"),
	},
	{
		key = "RightArrow",
		mods = "CTRL",
		actions = wezterm.action.ActivatePaneDirection("Right"),
	},
	{
		key = "l",
		mods = "CTRL",
		actions = wezterm.action.ActivatePaneDirection("Right"),
	},
	{
		key = "UpArrow",
		mods = "CTRL",
		actions = wezterm.action.ActivatePaneDirection("Up"),
	},
	{
		key = "k",
		mods = "CTRL",
		actions = wezterm.action.ActivatePaneDirection("Up"),
	},
	{
		key = "DownArrow",
		mods = "CTRL",
		actions = wezterm.action.ActivatePaneDirection("Down"),
	},
	{
		key = "j",
		mods = "CTRL",
		actions = wezterm.action.ActivatePaneDirection("Down"),
	},
}

return M
