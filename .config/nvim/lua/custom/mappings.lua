---@type MappingsTable
local M = {}

-- Visual-mode commands
M.general = {
  n = {
    ["<leader>q"] = { "<cmd> q <CR>", "Exit vim" },
    ["<A-Down>"] = { ":MoveLine(1)<CR>" },
    ["<A-Up>"] = { ":MoveLine(-1)<CR>" },

    -- [";"] = { ":", "enter command mode", opts = { nowait = true } },

    --  format with conform
    ["<leader>fm"] = {
      function()
        require("conform").format()
      end,
      "formatting",
    },
  },
  v = {
    ["<"] = { "<gv", "indent" },
    [">"] = { ">gv", "indent" },
    ["<A-Down>"] = { ":MoveBlock(1)<CR>" },
    ["<A-Up>"] = { ":MoveBlock(-1)<CR>" },
  },
}

return M
