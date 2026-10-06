return {
  {
    "MagicDuck/grug-far.nvim",
    opts = { headerMaxWidth = 80 },
    cmd = { "GrugFar", "GrugFarWithin" },
    keys = {
      {
        "<leader>sr",
        function()
          local grug = require "grug-far"
          local ext = vim.bo.buftype == "" and vim.fn.expand "%:e"
          grug.open {
            transient = true,
            prefills = {
              filesFilter = ext and ext ~= "" and "*." .. ext or nil,
            },
          }
        end,
        mode = { "n", "x" },
        desc = "Search and Replace",
      },
    },
  },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
  },

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
        "oxfmt",
        "prettier",
        "oxlint",
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

  {
    "esmuellert/codediff.nvim",
    cmd = "CodeDiff",
    opts = {
      explorer = {
        line_stats = {
          enabled = true,
        },
      },
      diff = {
        gutter_signs = {
          insert_text = "＋",
          delete_text = "－",
          highlight_numbers = true,
          changed_priority = 100,
          unchanged_priority = nil,
        },
      },
    },
  },

  {
    "JoosepAlviste/nvim-ts-context-commentstring",
    config = function()
      require("ts_context_commentstring").setup {
        enable_autocmd = false,
      }
    end,
  },

  {
    url = "https://codeberg.org/andyg/leap.nvim",
    lazy = false,
    config = function()
      require "leap"
    end,
  },

  {
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "esmuellert/codediff.nvim",
      "nvim-telescope/telescope.nvim",
    },
    cmd = "Neogit",
    config = function()
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

  {
    "Hashino/doing.nvim",
    lazy = false,
    cmd = "Do",
    opts = {},
    keys = {
      {
        "<leader>da",
        function()
          require("doing").add()
        end,
        {},
      },
      {
        "<leader>dn",
        function()
          require("doing").done()
        end,
        {},
      },
      {
        "<leader>de",
        function()
          require("doing").edit()
        end,
        {},
      },
    },
    config = function()
      require("doing").setup {
        message_timeout = 2000,
        doing_prefix = "Doing: ",

        ignored_buffers = { "NvimTree" },
        show_remaining = true,
        show_messages = true,

        -- window configs of the floating tasks editor
        -- see :h nvim_open_win() for available options
        edit_win_config = {
          width = 90,
          height = 25,
          border = "rounded",
        },

        store = {
          -- name of tasks file
          file_name = ".tasks",
          -- if true, tasks file is always in sync otherwise,
          -- tasks get saved on closing neovim or changing cwd
          sync_tasks = true,
        },
      }
    end,
  },
}
