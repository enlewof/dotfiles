-- Install UI related plugins

-- Tokyonight theme and Lualine plugin for status line
return {
  {"folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
  },
  {'nvim-lualine/lualine.nvim',
  config = function()
    require("lualine").setup{
      options = { theme = 'tokyonight' }
      }
    end,
  dependencies = { 'nvim-tree/nvim-web-devicons' }
  },
}
