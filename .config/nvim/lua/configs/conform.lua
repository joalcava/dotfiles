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

  format_on_save = {
    timeout_ms = 2500,
  },
}

require("conform").setup(options)
