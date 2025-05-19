return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- format on save
    opts = require "configs.conform",
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "vimdoc",
        "lua",
        "html",
        "css",
        "python",
        "javascript",
        "typescript",
        "tsx",
        "c",
        "json",
        "jsonc",
        "c_sharp",
        "markdown",
        "go",
        "rust",
        "markdown_inline",
        "toml",
        "bash",
      },
    },
  },

  {
    "williamboman/mason.nvim",
    opts = {
      pkgs = {
        -- lua
        "lua-language-server",
        "stylua",
        -- web dev
        "biome",
        "html-lsp",
        "css-lsp",
        "prettier",
        "eslint-lsp",
        "typescript-language-server",
        "tailwindcss-language-server",
        "deno",
        -- languages
        "python-lsp-server",
        "clangd",
        "clang-format",
        "gopls",
        "rust-analyzer",
        "csharp-language-server",
        -- config n scripting
        "bicep-lsp",
        "taplo",
        "bash-language-server",
        "azure-pipelines-language-server",
      },
    },
  },

  -- -----------------------

  { "kmonad/kmonad-vim" },

  {
    "numToStr/Comment.nvim",
    config = function(_)
      require("Comment").setup {
        pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook(),
      }
    end,
  },

  {
    "GustavEikaas/easy-dotnet.nvim",
    cmd = "Dotnet",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
    },
    config = function()
      require("easy-dotnet").setup()
    end,
  },

  { "sindrets/diffview.nvim", cmd = "DiffviewOpen" },

  {
    "JoosepAlviste/nvim-ts-context-commentstring",
    config = function()
      require("ts_context_commentstring").setup {
        enable_autocmd = false,
      }
    end,
  },

  {
    "ggandor/leap.nvim",
    lazy = false,
    config = function()
      require "leap"
    end,
  },

  {
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "sindrets/diffview.nvim",
      "nvim-telescope/telescope.nvim",
    },
    cmd = "Neogit",
    config = function()
      vim.cmd [[colorscheme catppuccin]]
      require("neogit").setup {}
    end,
  },

  {
    "kylechui/nvim-surround",
    version = "*",
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup {}
    end,
  },

  {
    "fedepujol/move.nvim",
    event = "VeryLazy",
    config = function()
      require("move").setup {
        word = { enable = false },
        char = { enable = false },
      }
    end,
  },

  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },

  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
}
