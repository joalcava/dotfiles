local options = {
  formatters_by_ft = {
		sh = { "shfmt" },
		lua = { "stylua" },

		html = { "prettier" },
		css = { "prettier" },
    json = { "jq" },
		javascript = { "prettier" },
		javascriptreact = { "prettier" },

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
