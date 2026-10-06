local options = {
  formatters_by_ft = {
    sh = { "shfmt" },
    lua = { "stylua" },

    html = { "oxfmt" },
    css = { "oxfmt" },
    json = { "jq", "oxfmt" },
    jsonc = { "prettier" },
    javascript = { "oxfmt" },
    javascriptreact = { "oxfmt" },
    typescript = { "oxfmt" },
    typescriptreact = { "oxfmt" },

    go = { "gofmt", "goimports" },
    rust = { "rustfmt" },
    csharp = { "csharpier" },
    cs = { "csharpier" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 2500,
    lsp_fallback = true,
  },
}

return options
