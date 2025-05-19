require("nvchad.configs.lspconfig").defaults()

local servers = {
  "html",
  "cssls",
  "eslint",
  "biome",
  "ts_ls",
  "pylsp",
  "tailwindcss",
  "clangd",
  "csharp_ls",
  "taplo",
  "bashls",
  "gopls",
  "rust_analyzer",
  "azure_pipelines_ls",
}

vim.lsp.enable(servers)

-- local bicep_lsp_bin = "/home/joalcava/.local/share/nvim/mason/packages/bicep-lsp/bicep-lsp"
-- lspconfig.bicep.setup {
--   cmd = { bicep_lsp_bin },
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
-- }
