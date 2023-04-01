vim.g.catppuccin_flavour = "macchiato" -- latte, frappe, macchiato, mocha
require("catppuccin").setup({
  transparent_background = false,
  term_colors = false,
  compile = {
    enabled = false,
    path = vim.fn.stdpath("cache") .. "/catppuccin",
  },
  dim_inactive = {
    enabled = false,
    shade = "dark",
    percentage = 0.15,
  },
  styles = {
    comments = { "italic" },
    conditionals = { "italic" },
    loops = {},
    functions = {},
    keywords = {},
    strings = {},
    variables = {},
    numbers = {},
    booleans = {},
    properties = {},
    types = {},
    operators = {},
  },
  integrations = {
    treesitter = true,
    cmp = true,
    gitsigns = true,
    telescope = true,
    nvimtree = true,
  },
  color_overrides = {},
  highlight_overrides = {},
})

vim.g.material_style = "deep ocean"

require("rose-pine").setup({
  disable_background = false
});

vim.cmd([[
  try
    colorscheme catppuccin
  catch /^Vim\%((\a\+)\)\=:E185/
    colorscheme default
    set background=dark
  endtry
]])
