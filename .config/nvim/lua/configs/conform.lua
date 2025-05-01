local options = {
  formatters_by_ft = {
    sh = { "shfmt" },
    lua = { "stylua" },

    html = { "prettier" },
    css = { "prettier" },
    json = { "jq", "prettier" },
    jsonc = { "prettier" },
    javascript = { "prettier" },
    javascriptreact = { "prettier" },
    typescript = { "prettier" },
    typescriptreact = { "prettier" },

    go = { "gofmt", "goimports" },
    rust = { "rustfmt" },
  },

  format_on_save = {
    timeout_ms = 2000,
    lsp_format = "fallback"
  },
}

return options
