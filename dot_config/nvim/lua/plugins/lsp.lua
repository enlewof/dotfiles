-- Description: This file contains the configurations for the mason and other lsp plugins.
-- From https://www.josean.com/posts/neovim-linting-and-formatting
return {
	{
		"mason-org/mason.nvim",
		config = function()
			-- import mason
			local mason = require("mason")

			-- enable mason and configure icons
			mason.setup({
				ui = {
					icons = {
						package_installed = "✓",
						package_pending = "➜",
						package_uninstalled = "✗",
					},
				},
			})
		end,
	},
	{
		"mason-org/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "basedpyright", "groovyls", "lua_ls", "puppet", "terraformls" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			-- The nvim-cmp almost supports LSP's capabilities so You should advertise it to LSP servers..
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			require("lspconfig").basedpyright.setup({
				capabilities = capabilities,
			})
			require("lspconfig").groovyls.setup({
				capabilities = capabilities,
			})
			require("lspconfig").lua_ls.setup({
				capabilities = capabilities,
			})
			require("lspconfig").puppet.setup({
				capabilities = capabilities,
			})
			require("lspconfig").terraformls.setup({
				capabilities = capabilities,
			})
		end,
	},
}
