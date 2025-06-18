local wezterm = require("wezterm")

local function findPluginPackagePath(plugin)
	local separator = package.config:sub(1, 1) == "\\" and "\\" or "/"
	for _, v in ipairs(wezterm.plugin.list()) do
		return v.plugin_dir .. separator .. "plugin" .. separator .. "?.lua"
	end
end

local path = resolve_path()
if not path then
	wezterm.log_error("Plugin not found")
	return
end

package.path = package.path
	.. ";"
	.. findPluginPackagePath("httpssCssZssZsgithubsDscomsZsmikosaurussZswezterm-sessionizer")

local keys = dofile("keys.lua")

local M = {}

M.apply_to_config = function(config)
	config.key = keys.keys
end

return M
