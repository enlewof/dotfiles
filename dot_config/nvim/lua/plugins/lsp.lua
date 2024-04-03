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
      require'lspconfig'.lua_ls.setup{}
      require'lspconfig'.terraformls.setup{}
    end,},
}
