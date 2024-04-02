-- Description: This file contains the configuration for the mason plugin.
-- From https://www.josean.com/posts/neovim-linting-and-formatting
return {
  "williamboman/mason.nvim",
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
}
