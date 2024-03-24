require "nvchad.mappings"

local map = vim.keymap.set

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

map("n", "-", ";")
map("n", ";", ":", { desc = "CMD enter command mode" })

-- map("n", "<leader>q", "<cmd> q <CR>", { desc = "Exit vim" })

map("v", "<", "<gv", { desc = "indent" })
map("v", ">", ">gv", { desc = "indent" })

map("n", "<A-Down>", ":MoveLine(1)<CR>")
map("n", "<A-Up>", ":MoveLine(-1)<CR>")
map("v", "<A-Down>", ":MoveBlock(1)<CR>")
map("v", "<A-Up>", ":MoveBlock(-1)<CR>")

--  format with conform
map("n", "<leader>fm", function()
  require("conform").format()
end, { desc = "formatting" })
