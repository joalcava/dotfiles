--[[ require "new.packer" ]]
--[[ require "new.keymaps" ]]
--[[ require "new.telescope" ]]

if not pcall(require, "impatient") then
    print "Failed to load impatient."
end

require "joalcava.options"
require "joalcava.keymaps"
require "joalcava.plugins"
require "joalcava.colorscheme"
require "joalcava.cmp"
require "joalcava.lsp"
require "joalcava.telescope"
require "joalcava.treesitter"
require "joalcava.autopairs"
require "joalcava.comment"
require "joalcava.gitsigns"
require "joalcava.nvim-tree"
require "joalcava.bufferline"
require "joalcava.lualine"
require "joalcava.toggleterm"
require "joalcava.indentline"
require "joalcava.whichkey"
require "joalcava.autocommands"
require "joalcava.plugins-options"
