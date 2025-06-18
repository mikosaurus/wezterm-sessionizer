local wezterm = require("wezterm")
local act = wezterm.action

local M = {}
M.keys = {

	-- Section for tabs
	{
		key = "c",
		mods = "leader",
		action = act.SpawnWindow,
	},
	{
		key = "h",
		mods = "ALT",
		action = act.ActivateWindowRelative(-1),
	},
	{
		key = "l",
		mods = "ALT",
		action = act.ActivateWindowRelative(1),
	},

	-- Section for moving between panes
	{
		key = "LeftArrow",
		mods = "CTRL",
		action = act.ActivatePaneDirection("Left"),
	},
	{
		key = "h",
		mods = "CTRL",
		action = act.ActivatePaneDirection("Left"),
	},
	{
		key = "RightArrow",
		mods = "CTRL",
		action = act.ActivatePaneDirection("Right"),
	},
	{
		key = "l",
		mods = "CTRL",
		action = act.ActivatePaneDirection("Right"),
	},
	{
		key = "UpArrow",
		mods = "CTRL",
		action = act.ActivatePaneDirection("Up"),
	},
	{
		key = "k",
		mods = "CTRL",
		action = act.ActivatePaneDirection("Up"),
	},
	{
		key = "DownArrow",
		mods = "CTRL",
		action = act.ActivatePaneDirection("Down"),
	},
	{
		key = "j",
		mods = "CTRL",
		action = act.ActivatePaneDirection("Down"),
	},
}

return M
