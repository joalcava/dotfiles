local servers = {
	"lua_ls",
	"rust_analyzer",
	"tsserver",
	"jsonls",
	"omnisharp_mono",
	"lemminx",
	"eslint",
}

require("mason").setup()
require("mason-lspconfig").setup({
		ensure_installed = servers
})

local lspconfig = require("lspconfig")

for _, server in pairs(servers) do
	local opts = {
		on_attach = require("joalcava.lsp.handlers").on_attach,
		capabilities = require("joalcava.lsp.handlers").capabilities,
	}
	local has_custom_opts, server_custom_opts = pcall(require, "joalcava.lsp.settings." .. server)
	if has_custom_opts then
		opts = vim.tbl_deep_extend("force", opts, server_custom_opts)
	end
	lspconfig[server].setup(opts)
end

lspconfig.omnisharp_mono.setup {}
