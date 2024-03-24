local options = {
  lsp_fallback = true,
  formatters_by_ft = {
    sh = { "shfmt" },
    lua = { "stylua" },

    html = { "prettier" },
    css = { "prettier" },
    json = { "jq" },
    javascript = { "prettier" },
    javascriptreact = { "prettier" },
    typescript = { "prettier" },
    typescriptreact = { "prettier" },

    go = { "gofmt", "goimports" },
    rust = { "rustfmt" },
  },

  -- format_on_save = {
  --   -- These options will be passed to conform.format()
  --   timeout_ms = 500,
  --   lsp_fallback = true,
  -- },
}

require("conform").setup(options)
