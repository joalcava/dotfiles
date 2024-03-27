-- This file  needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "chadtain",
  theme_toggle = { "chadtain", "blossom_light" },
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
    theme = "minimal",
    separator_style = "block",
  },
}

return M
