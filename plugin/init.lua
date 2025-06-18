local wezterm = require("wezterm")

local function findPluginPackagePath(plugin)
	local separator = package.config:sub(1, 1) == "\\" and "\\" or "/"
	for _, v in ipairs(wezterm.plugin.list()) do
		print(v.url)
		if v.url == plugin then
			return v.plugin_dir .. separator .. "plugin" .. separator .. "?.lua"
		end
	end
end

package.path = package.path .. ";" .. findPluginPackagePath("https://github.com/mikosaurus/wezterm-sessionizer")

local keys = dofile("keys.lua")

local M = {}

M.apply_to_config = function(config)
	config.key = keys.keys
end

return M
