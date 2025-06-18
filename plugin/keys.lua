local wezterm = require("wezterm")
local act = wezterm.action

local M = {}
M.keys = {

	-- Workspaces
	{
		key = "p",
		mods = "LEADER|CTRL",
		action = wezterm.action_callback(function(window, pane)
			local choices = {}

			for _, workspace in ipairs(wezterm.mux.get_workspace_names()) do
				table.insert(choices, { label = workspace, id = workspace })
			end

			window:perform_action(
				wezterm.action.InputSelector({
					action = wezterm.action_callback(function(inner_window, inner_pane, id, label)
						print("selected: ", id, label)
						if label then
							inner_window:perform_action(act.SwitchToWorkspace({ name = label }), inner_pane)
						elseif id then
							inner_window:perform_action(act.SwitchToWorkspace({ name = id }, inner_pane))
						end
					end),
					title = "Go to",
					choices = choices,
					fuzzy = true,
					fuzzy_description = "Goto Workspace: ",
				}),
				pane
			)
		end),
		-- action = act.ShowLauncherArgs({
		-- 	flags = "FUZZY|WORKSPACES",
		-- }),
	},
	{
		key = "å",
		mods = "LEADER|CTRL",
		action = act.ShowLauncher,
	},

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
		mods = "LEADER",
		action = act.SplitPane({
			direction = "Right",
		}),
	},
	{
		key = "'",
		mods = "LEADER",
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

	-- clear screen
	{
		key = "l",
		mods = "LEADER|CTRL",
		action = act.SendKey({ key = "l", mods = "CTRL" }),
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
