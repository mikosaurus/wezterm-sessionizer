local wezterm = require("wezterm")

local M = {}
M.keys = {
	{
		key = "LeftArrow",
		mods = "CTRL",
		actions = wezterm.action.ActivatePaneDirection("Left"),
	},
	{
		key = "H",
		mods = "CTRL",
		actions = wezterm.action.ActivatePaneDirection("Left"),
	},
	{
		key = "RightArrow",
		mods = "CTRL",
		actions = wezterm.action.ActivatePaneDirection("Right"),
	},
	{
		key = "L",
		mods = "CTRL",
		actions = wezterm.action.ActivatePaneDirection("Right"),
	},
	{
		key = "UpArrow",
		mods = "CTRL",
		actions = wezterm.action.ActivatePaneDirection("Up"),
	},
	{
		key = "K",
		mods = "CTRL",
		actions = wezterm.action.ActivatePaneDirection("Up"),
	},
	{
		key = "DownArrow",
		mods = "CTRL",
		actions = wezterm.action.ActivatePaneDirection("Down"),
	},
	{
		key = "J",
		mods = "CTRL",
		actions = wezterm.action.ActivatePaneDirection("Down"),
	},
}

return M
