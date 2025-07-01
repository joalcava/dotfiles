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
    csharp = { "csharpier" },
    cs = { "csharpier" },
  },

  -- format_on_save = {
  --   -- These options will be passed to conform.format()
  --   timeout_ms = 500,
  --   lsp_fallback = true,
  -- },
}

return options
