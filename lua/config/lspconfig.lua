local lspconfig = require("lspconfig")

local M = {}

M.capabilities = vim.lsp.protocol.make_client_capabilities()

M.init = function(client)
	if client.supports_method("textDocument/semanticTokens") then
		client.server_capabilities.semanticTokensProvider = nil
	end
end

local lsp_list = { 'lua_ls', 'ts_ls', 'markdown_oxide' }

for _, lsp in ipairs(lsp_list) do
	lspconfig[lsp].setup {

		capabilities = require("blink.cmp").get_lsp_capabilities(M.capabilities),
		on_init = M.init,
	}
end

-- lspconfig.lua_ls.setup({
-- 	settings = {
-- 		Lua = {
-- 			talemetry = {
-- 				enable = false,
-- 			},
-- 		},
-- 	},
-- 	capabilities = M.capabilities,
-- 	on_init = M.init,
-- })
--
-- lspconfig.ts_ls.setup({
-- 	capabilities = M.capabilities,
-- 	on_init = M.init,
-- })
