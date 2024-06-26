-- Description: This file contains the configurations for the mason and other lsp plugins.
-- From https://www.josean.com/posts/neovim-linting-and-formatting
return {
  {"williamboman/mason.nvim",
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
    end,},
  {"williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup {
        ensure_installed = { "lua_ls", "terraformls" },
      }
    end,},
  {"neovim/nvim-lspconfig",
    config = function()
      -- The nvim-cmp almost supports LSP's capabilities so You should advertise it to LSP servers..
      local capabilities = require('cmp_nvim_lsp').default_capabilities()

      require'lspconfig'.lua_ls.setup{
        capabilities = capabilities,
      }
      require'lspconfig'.terraformls.setup{
        capabilities = capabilities,
      }
    end,},
}
