require "nvchad.options"

vim.o.cursorlineopt = 'both'
vim.opt.relativenumber = true

vim.cmd([[
  let g:sneak#s_next = 1
  set spell
  set spelllang=es_es,en_us
]])


vim.cmd [[ autocmd BufNewFile,BufRead *.bicep set filetype=bicep ]]
