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

Plugin 'andweeb/presence.nvim'

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

" Discord presence
" General options
let g:presence_auto_update = 1
let g:presence_neovim_image_text   = "CLI Terminal text editor"
let g:presence_main_image          = "neovim"
let g:presence_client_id           = "793271441293967371"
let g:presence_log_level           = "info"
let g:presence_debounce_timeout    = 10
let g:presence_enable_line_number  = 0
let g:presence_blacklist           = []
let g:presence_buttons             = 1
let g:presence_file_assets         = {}
let g:presence_show_time           = 1

" Rich Presence text options
let g:presence_editing_text        = "Editing %s"
let g:presence_file_explorer_text  = "Browsing %s"
let g:presence_git_commit_text     = "Committing changes"
let g:presence_plugin_manager_text = "Managing plugins"
let g:presence_reading_text        = "Reading %s"
let g:presence_workspace_text      = "Working on %s"
let g:presence_line_number_text    = "Line %s out of %s"

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
