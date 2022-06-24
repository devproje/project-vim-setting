set nocompatible 		" be improved, required
filetype off

map <leader> n :NERDTreeFocus<CR>
map <C-n> :NERDTree<CR>
map <C-t> :NERDTreeToggle<CR>
map <F5> :tabnew<CR>
map <F4> :bn<CR>
 
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
 
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
 
" plus
Plugin 'scrooloose/nerdtree'
Plugin 'morhetz/gruvbox'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'nanotech/jellybeans.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'Raimondi/delimitMate'
Plugin 'ryanoasis/vim-devicons'
Plugin 'jeffkreeftmeijer/vim-numbertoggle'
 
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'airblade/vim-gitgutter'
Plugin 'edkolev/tmuxline.vim'

Plugin 'maxboisvert/vim-simple-complete'

call vundle#end()
filetype plugin indent on    " required

" Theme
let g:gruvbox_contrast_dark="hard"
set background=dark
autocmd vimenter * colorscheme gruvbox

" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

"let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_theme= 'tomorrow'

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|public$\|log$\|tmp$\|vendor$',
  \ 'file': '\v\.(exe|so|dll)$'
\ }

if has("autocmd")
	au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "norm g`\"" | endif
endif
 
let g:gitgutter_max_signs = 500  " default value
 
" turn hybrid line numbers on
set number relativenumber
set nu rnu
 
syntax on

set hlsearch
set autoindent
 
set autowrite
set autoread
set scrolloff=6
set cindent
set history=256
set laststatus=2
set shiftwidth=3
set showmatch
set smartcase
 
set smarttab
set smartindent
set softtabstop=3
set tabstop=3
set incsearch
