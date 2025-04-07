require "nvchad.options"

vim.o.cursorlineopt = 'both'
vim.opt.relativenumber = true

vim.cmd([[
  let g:sneak#s_next = 1
  set spell
  set spelllang=es
]])
