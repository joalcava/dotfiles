local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

keymap('n', '<leader>a', '<cmd>AerialToggle!<CR>', opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Keep search results centered
keymap("n", "n", "nzz", opts)
keymap("n", "N", "Nzz", opts)

-- Navigate buffers
keymap("n", "<A-e>", ":bnext<CR>", opts)
keymap("n", "<A-n>", ":bprevious<CR>", opts)

-- Move text up and down
keymap("n", "<A-Down>", ":m .-2<CR>==", opts)
keymap("n", "<A-Up>", ":m .+1<CR>==", opts)

-- Insert --
-- Add characters to undo list
keymap("i", ".", ".<c-g>u", opts)
keymap("i", "!", "!<c-g>u", opts)
keymap("i", "?", "?<c-g>u", opts)
keymap("i", "(", "(<c-g>u", opts)
keymap("i", ")", ")<c-g>u", opts)
keymap("i", "{", "{<c-g>u", opts)
keymap("i", "}", "}<c-g>u", opts)
keymap("i", "[", "[<c-g>u", opts)
keymap("i", "]", "]<c-g>u", opts)

-- Press nn fast to exit insert mode 
-- keymap("i", "nn", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-Up>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-Down>", ":move '<-2<CR>gv-gv", opts)

