syntax on " enable syntax highlighting

" tabs, indentating, and backspace
set expandtab           " spaces instead of tabs
set tabstop=2           " 2 spaces for tabs
set shiftwidth=2        " 2 spaces for indentation
set backspace=2         " backspace fix after plugin installs

" Remove Trailing Whitespace on save
autocmd BufWritePre * :%s/\s\+$//e
