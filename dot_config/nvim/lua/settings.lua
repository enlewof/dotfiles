-- Cursor Options

vim.opt.guicursor = "n-v-i-c:block-Cursor"

-- tabs, indentating, and backspace
vim.opt.expandtab = true  -- spaces instead of tabs
vim.opt.tabstop = 2       -- 2 spaces for tabs
vim.opt.shiftwidth = 2    -- 2 spaces for indentation

-- Color Theme
vim.cmd[[colorscheme tokyonight]]

-- Allow Mouse copy and paste
vim.opt.mouse = "r"

-- Remove White Space on save
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  pattern = { "*" },
  command = [[%s/\s\+$//e]],
})
