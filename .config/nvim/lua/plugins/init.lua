return {
  -- {
  --   dir = "/home/joalcava/repos/tw-prefixer.nvim",
  --   lazy = false
  -- },
  {
    "kmonad/kmonad-vim",
    lazy = false,
  },
  {
    "max397574/better-escape.nvim",
    enabled = false,
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        -- lua
        "lua-language-server",
        "stylua",
        -- web dev
        "html-lsp",
        "css-lsp",
        "prettier",
        "typescript-language-server",
        "tailwindcss-language-server",
        "deno",
        -- languages
        "clangd",
        "clang-format",
        "gopls",
        "rust-analyzer",
        "csharp-language-server",
        -- config n scripting
        "taplo",
        "bash-language-server",
      },
    },
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
        "javascript",
        "typescript",
        "tsx",
        "c",
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
    "stevearc/conform.nvim",
    -- event = 'BufWritePre' -- format on save
    config = function()
      require "configs.conform"
    end,
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  {
    "numToStr/Comment.nvim",
    config = function(_, opts)
      require("Comment").setup {
        pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook(),
      }
    end,
  },

  -- Not in NVChad
  { "folke/tokyonight.nvim", lazy = false },

  { "catppuccin/nvim", name = "catppuccin", lazy = false },

  { "sindrets/diffview.nvim", cmd = "DiffviewOpen" },

  { "JoosepAlviste/nvim-ts-context-commentstring" },

  {
    "ggandor/leap.nvim",
    lazy = false,
    config = function()
      require("leap")
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
    "nvim-treesitter/nvim-treesitter-textobjects",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
    },
    event = "VeryLazy",
    config = function()
      require "configs.treesitter-textobjects"
    end,
  },
}
