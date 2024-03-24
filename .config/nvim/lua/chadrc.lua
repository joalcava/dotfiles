-- This file  needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "nightlamp",
  theme_toggle = { "nightlamp", "blossom_light" },
  -- transparency = true,

  cmp = {
    style = "default",
  },

  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
    NvimTreeOpenedFolderName = { fg = "green", bold = true },
  },

  statusline = {
    theme = "default",
    separator_style = "block",
    modules = nil,
  },
}

return M
