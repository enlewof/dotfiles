-- Install Syntax related plugins
-- 1. Nagios syntax highlighting
-- 2. Treesitter for other syntax highlighting and indentation
-- Configuration settings provided by https://www.josean.com/posts/nvim-treesitter-and-textobjects

return {
  "crazy-canux/nagios.vim",
  {"nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local treesitter = require("nvim-treesitter.configs")

    -- configure treesitter
    treesitter.setup({ -- enable syntax highlighting
      highlight = {
        enable = true,
      },
      -- enable indentation
      indent = { enable = true },
      -- ensure these language parsers are installed
      -- the first five should always be installed
      ensure_installed = {
        "c",
        "lua",
        "vim",
        "vimdoc",
        "query",
        "bash",
        "css",
        "dockerfile",
        "go",
        "gotmpl",
        "groovy",
        "html",
        "javascript",
        "json",
        "markdown",
        "markdown_inline",
        "puppet",
        "python",
        "ruby",
        "terraform",
        "toml",
        "yaml",
      },
    })
  end,
  }
}
