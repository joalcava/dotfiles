-- This file  needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "flex-light",
  theme_toggle = { "flex-light", "flex-light" },
  transparency = false,
}

M.ui = {
  cmp = {
    style = "default",
  },

  statusline = {
    separator_style = "block",
  },
}

return M
