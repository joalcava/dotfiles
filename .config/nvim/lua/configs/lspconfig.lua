require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

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
  "bicep",
}

local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default configuration
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end
