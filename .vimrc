" ----------- BASICS ---------
set nocompatible
syntax on
set background=dark

" ----------- LINES ----------
set number
set hlsearch  
set incsearch 

" ----------- Tabs / Indentation ----------- 
set tabstop=4               " 4 spaces by a TAB
set shiftwidth=4            " 4 spaces for auto-indent
set expandtab               " convert TAB to spaces
set smartindent             " smart idents
set autoindent              " auto indent

" ----------- UI Tweaks ----------- 
set mouse=a
set showmatch
set ruler
set wildmenu
set clipboard=unnamedplus
set splitright
set splitbelow
set laststatus=2

" ----------- Filetypes ----------- 
filetype plugin indent on

" ----------- Plugin Manager (vim-plug) ----------- 
call plug#begin('~/.vim/plugged')

" Autocomplete / IntelliSense για C/C++
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Syntax highlighting for all languages
Plug 'sheerun/vim-polyglot'

" OneDark theme
Plug 'joshdick/onedark.vim'

" Status bar 
Plug 'itchyny/lightline.vim'

" File explorer like VSCODE
Plug 'preservim/nerdtree'

" Auto close brackets, quotes, etc
Plug 'jiangmiao/auto-pairs'

call plug#end()

colorscheme onedark

" ----------- coc.nvim Config ----------- 
let g:coc_global_extensions = ['coc-clangd']

" ----------- Lightline Config ----------- 
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

" ----------- Keybinds ----------- 
nnoremap <C-n> :NERDTreeToggle<CR>

" VSCode-style autocomplete με TAB
inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ CheckBackspace() ? "\<TAB>" :
      \ coc#refresh()

inoremap <silent><expr> <S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1] =~# '\s'
endfunction
