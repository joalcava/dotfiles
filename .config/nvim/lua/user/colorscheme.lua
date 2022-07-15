 local status_ok, gruvbox = pcall(require, "gruvbox")
 if not status_ok then
   return
 end

 gruvbox.setup({
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
