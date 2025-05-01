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

local bicep_lsp_bin = "/home/joalcava/.local/share/nvim/mason/packages/bicep-lsp/bicep-lsp"
lspconfig.bicep.setup {
  cmd = { bicep_lsp_bin },
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
}
