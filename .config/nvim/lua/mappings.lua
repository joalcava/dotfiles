require "nvchad.mappings"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })

map("v", "<", "<gv", { desc = "indent" })
map("v", ">", ">gv", { desc = "indent" })

map("n", "<A-Down>", ":MoveLine(1)<CR>")
map("n", "<A-Up>", ":MoveLine(-1)<CR>")
map("v", "<A-Down>", ":MoveBlock(1)<CR>")
map("v", "<A-Up>", ":MoveBlock(-1)<CR>")

-- leap
map({ "n", "x", "o" }, "s", "<Plug>(leap-forward)")
map({ "n", "x", "o" }, "S", "<Plug>(leap-backward)")

-- todo-comments
map("n", "]t", function()
  require("todo-comments").jump_next()
end, { desc = "Next todo comment" })

map("n", "[t", function()
  require("todo-comments").jump_prev()
end, { desc = "Previous todo comment" })

