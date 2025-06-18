-- local wezterm = require("wezterm")
local keys = require("keys")

local M = {}

M.apply_to_config = function(config)
	config.key = keys.keys
end

return M
