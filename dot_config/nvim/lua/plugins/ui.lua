-- Install UI related plugins

-- Lualine plugin for status line
return {
  'nvim-lualine/lualine.nvim',
  config = function()
    require("lualine").setup{
      options = { theme = 'powerline' }
      }
    end,
  dependencies = { 'nvim-tree/nvim-web-devicons' }
}
