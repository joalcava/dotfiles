---@type MappingsTable
local M = {}

M.general = {
  n = {
    ["<leader>q"] = { "<cmd> q <CR>", "Exit vim" },

    -- [";"] = { ":", "enter command mode", opts = { nowait = true } },

    --  format with conform
    ["<leader>fm"] = {
      function()
        require("conform").format()
      end,
      "formatting",
    }

  },
  v = {
    ["<"] = { "<gv", "indent"},
    [">"] = { ">gv", "indent"},
  },
}


return M
