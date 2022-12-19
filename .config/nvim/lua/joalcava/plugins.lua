local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system({
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  })
  print("Installing packer close and reopen Neovim...")
  vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init({
  display = {
    open_fn = function()
      return require("packer.util").float({ border = "rounded" })
    end,
  },
})

return packer.startup(function(use)
  -- Core
  use("wbthomason/packer.nvim")
  use("lewis6991/impatient.nvim")
  use("nvim-lua/plenary.nvim")
  use("folke/which-key.nvim")
  use("akinsho/toggleterm.nvim")

  -- Editing
  use("ggandor/leap.nvim")
  use("windwp/nvim-autopairs")
  use("numToStr/Comment.nvim")
  use("lukas-reineke/indent-blankline.nvim")
  use("kylechui/nvim-surround")
  use("tpope/vim-sleuth")

  -- Colorschemes
  use({ "rose-pine/neovim", as = "rose-pine" })
  use("ellisonleao/gruvbox.nvim")
  use("folke/tokyonight.nvim")
  use({ "catppuccin/nvim", as = "catppuccin" })
  use("marko-cerovac/material.nvim")
  use("projekt0n/github-nvim-theme")

  -- UI/UX
  use({ "shortcuts/no-neck-pain.nvim", tag = "*" })
  use("moll/vim-bbye") -- maybe remove this
  use("akinsho/bufferline.nvim")
  use("rrethy/vim-illuminate")
  use("nvim-lualine/lualine.nvim")
  use("nvim-tree/nvim-web-devicons")
  use({
    "nvim-tree/nvim-tree.lua",
    requires = { "nvim-tree/nvim-web-devicons" },
  })
  use({
    "folke/todo-comments.nvim",
    requires = "nvim-lua/plenary.nvim",
    config = function()
      require("todo-comments").setup()
    end,
  })

  -- cmp plugins
  use("hrsh7th/nvim-cmp") -- The completion plugin
  use("hrsh7th/cmp-buffer")
  use("hrsh7th/cmp-path")
  use("saadparwaiz1/cmp_luasnip") -- snippet completions
  use("hrsh7th/cmp-nvim-lsp")
  use("hrsh7th/cmp-nvim-lua")
  use("hrsh7th/cmp-nvim-lsp-signature-help")

  -- Snippets
  use("L3MON4D3/LuaSnip")
  use("rafamadriz/friendly-snippets")

  -- LSP
  use("williamboman/mason.nvim") -- Language servers installer
  use("williamboman/mason-lspconfig.nvim")
  use("neovim/nvim-lspconfig")
  use("jose-elias-alvarez/null-ls.nvim") -- for formatters and linters
  use("rust-lang/rust.vim")
  use("stevearc/aerial.nvim")

  -- Telescope
  use("nvim-telescope/telescope.nvim")
  use({
    "nvim-telescope/telescope-fzf-native.nvim",
    run = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build",
  })

  -- Treesitter
  use({
    "nvim-treesitter/nvim-treesitter",
    run = function()
      require("nvim-treesitter.install").update({ with_sync = true })
    end,
  })
  use("JoosepAlviste/nvim-ts-context-commentstring")
  use("nvim-treesitter/nvim-treesitter-context")

  -- Git
  use("lewis6991/gitsigns.nvim")
  use({ "TimUntersberger/neogit", requires = "nvim-lua/plenary.nvim" })

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
