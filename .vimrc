syntax on " enable syntax highlighting

" tabs, indentating, and backspace
set expandtab           " spaces instead of tabs
set tabstop=2           " 2 spaces for tabs
set shiftwidth=2        " 2 spaces for indentation
set backspace=2         " backspace fix after plugin installs

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Install Lightline
Plug 'itchyny/lightline.vim'

" Install vim-puppet
Plug 'rodjek/vim-puppet'

" Install ale for linting
Plug 'dense-analysis/ale'

" Install Deoplete
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1

" Install Utilsnips
Plug 'sirver/ultisnips'

" Install vim snippets
Plug 'honza/vim-snippets'

" Initialize plugin system
call plug#end()

" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger='<tab>'

" shortcut to go to next position
let g:UltiSnipsJumpForwardTrigger='<c-j>'

" shortcut to go to previous position
let g:UltiSnipsJumpBackwardTrigger='<c-k>'

" Lightline fix
set laststatus=2

" Remove Trailing Whitespace on save
autocmd BufWritePre * :%s/\s\+$//e
