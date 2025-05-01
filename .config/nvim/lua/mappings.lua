require "nvchad.mappings"

local map = vim.keymap.set

map("n", "-", ";")
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

--  format with conform
map("n", "<leader>fm", function()
  require("conform").format { timeout_ms = 2500, lsp_format = "fallback" }
end, { desc = "formatting" })
