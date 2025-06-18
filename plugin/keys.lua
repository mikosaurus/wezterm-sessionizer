local wezterm = require("wezterm")
local act = wezterm.action

local M = {}
M.keys = {

	-- Section for tabs
	{
		key = "c",
		mods = "LEADER",
		action = act.SpawnTab("CurrentPaneDomain"),
	},
	{
		key = "h",
		mods = "ALT",
		action = act.ActivateTabRelative(-1),
	},
	{
		key = "l",
		mods = "ALT",
		action = act.ActivateTabRelative(1),
	},

	-- Splitting tab in panes
	{
		key = "æ",
		mods = "ALT",
		action = act.SplitPane({
			direction = "Right",
		}),
	},
	{
		key = "'",
		mods = "ALT",
		action = act.SplitPane({
			direction = "Down",
		}),
	},

	-- Copy and paste
	{
		key = "C",
		mods = "CTRL",
		action = act.CopyTo("ClipboardAndPrimarySelection"),
	},
	{
		key = "v",
		mods = "CTRL",
		action = act.PasteFrom("Clipboard"),
	},

	-- Activate copy mode
	{
		key = "ø",
		mods = "LEADER|CTRL",
		action = act.ActivateCopyMode,
	},
	{
		key = "ø",
		mods = "LEADER",
		action = act.ActivateCopyMode,
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
