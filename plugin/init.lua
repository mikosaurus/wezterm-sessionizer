local wezterm = require("wezterm")

local function findPluginPackagePath(plugin)
	local separator = package.config:sub(1, 1) == "\\" and "\\" or "/"
	for _, v in ipairs(wezterm.plugin.list()) do
		if v.url == plugin then
			return v.plugin_dir .. separator .. "plugin" .. separator .. "?.lua"
		end
	end
end

package.path = package.path .. ";" .. findPluginPackagePath("https://github.com/mikosaurus/wezterm-sessionizer")

local keys = require("keys")

local M = {}

M.apply_to_config = function(config)
	config.leader = { key = "Space", mods = "CTRL" }
	config.keys = keys.keys
end

return M
