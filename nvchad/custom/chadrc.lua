---@type ChadrcConfig 
 local M = {}
 M.ui = {
  theme = "bearded-arc",
  transparency = true,
}
 M.plugins = "custom.plugins"
 M.mappings = require "custom.mappings"
 return M
