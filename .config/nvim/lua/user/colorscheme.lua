require("gruvbox").setup({
  italic = false
})

vim.cmd [[
try
  colorscheme ferrum
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]
