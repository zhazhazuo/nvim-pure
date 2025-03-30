local lspconfig = require("lspconfig")

local M = {}

M.capabilities = vim.lsp.protocol.make_client_capabilities()
M.init = function(client)
	if client.supports_method("textDocument/semanticTokens") then
		client.server_capabilities.semanticTokensProvider = nil
	end
end

lspconfig.lua_ls.setup({
	settings = {
		Lua = {
			talemetry = {
				enable = false,
			},
		},
	},
	capabilities = M.capabilities,
	on_init = M.init,
})
