let mapleader=','
set runtimepath+=~/vimfiles

runtime bundle/pathogen/autoload/pathogen.vim
call pathogen#infect()

set nocompatible
syntax on
filetype plugin indent on


" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " => Wordwraps
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set wrap
" set linebreak
set nolist 
" list disables linebreak
set nocompatible
set hidden

" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " => Terminal modes
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set fileencoding=utf-8

" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " => Text, tab and indent related
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " Use spaces instead of tabs
set expandtab
" " Be smart when using tabs ;)
set autoindent smartindent cindent
set hlsearch incsearch ignorecase smartcase
set history=200
set updatecount=0

set number
set relativenumber

set splitbelow
set splitright

set encoding=utf8
set fileencoding=utf8

set wildmenu
set wildmode=list:longest
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.class

set laststatus=2
set statusline=%F\ %m\ %r
set statusline+=%{FugitiveStatusline()}
set statusline+=\ %l/%L[%p%%]
set statusline+=\ %v[0x%B]
set regexpengine=0

map <Left>  :echo "no!"<cr>
map <Right> :echo "no!"<cr>
map <Up>    :echo "no!"<cr>
map <Down>  :echo "no!"<cr>


if ! has("gui_running")
      set t_Co=<t_CO>
    endif
" feel free to choose :set background=light for a different style
set background=dark
colorscheme monochrome
" theme for power line
let g:airline_theme='monochrome'

" nifty pane management
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>

" sadly cant use for remapped to tabnext
" nmap <leader>l :set list!<CR>

" Ctrl-left/right or leader-t tabs
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
map <leader>h :tabprevious<CR>
map <leader>l :tabnext<CR>
map <Leader>t :tabnew<CR>


" " Shortcut for nerdtree  
nmap <leader>ne :NERDTree<cr>

set listchars=tab:▸\ ,eol:¬,nbsp:.
set shiftwidth=2
set softtabstop=2
set tabstop=2
set tw=102
