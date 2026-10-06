require("nvchad.configs.lspconfig").defaults()

local servers = {
  "html",
  "cssls",
  "oxlint",
  -- "eslint",
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

vim.lsp.config("azure_pipelines_ls", {
  root_markers = { "azure-pipelines.yml" },
  workspace_required = true,
})

vim.lsp.enable(servers)

-- local bicep_lsp_bin = "/home/joalcava/.local/share/nvim/mason/packages/bicep-lsp/bicep-lsp"
-- lspconfig.bicep.setup {
--   cmd = { bicep_lsp_bin },
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
-- }
