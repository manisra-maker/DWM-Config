" Set line numbers and relative numbers
set number
set relativenumber

" Set indentation options
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4

" Enable mouse support
set mouse=a

" Initialize Vim-Plug
call plug#begin()

" Plugin list
Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'rebelot/kanagawa.nvim'
" Finish plugin setup
call plug#end()

" Add default colorscheme
colo kanagawa-wave

" Set encoding
set encoding=UTF-8

" Key mappings for NERDTree
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>

" Key mapping for Tagbar
nmap <F8> :TagbarToggle<CR>

" NERDTree configuration
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"
let NERDTreeShowHidden=1 " show hidden files for nerd tree

