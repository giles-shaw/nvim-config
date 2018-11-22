if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo  ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin()
Plug 'w0rp/ale'
Plug 'tpope/vim-sensible'
call plug#end()

let g:ale_linters = {
  \ 'python': ['flake8', 'mypy'] ,
  \ }

let g:ale_fixers = {
  \ 'python': ['black', 'autopep8', 'isort']
  \ }

let g:ale_fix_on_save = 1

set number
