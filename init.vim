""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   __  ___ .__   __.      ___   .___________.  ______  __    __   "
"  |  |/  / |  \ |  |     /   \  |           | /      ||  |  |  |  "
"  |  '  /  |   \|  |    /  ^  \ `---|  |----`|  ,----'|  |__|  |  "
"  |    <   |  . `  |   /  /_\  \    |  |     |  |     |   __   |  "
"  |  .  \  |  |\   |  /  _____  \   |  |     |  `----.|  |  |  |  "
"  |__|\__\ |__| \__| /__/     \__\  |__|      \______||__|  |__|  "
"                                                                  "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" --------------------PLUGINS------------------------
call plug#begin('~/.config/nvim/plugged')

  " Plugins {
    " easy-motion
    Plug 'easymotion/vim-easymotion'
    " Plug 'pangloss/vim-javascript'

    " Airline
    Plug 'vim-airline/vim-airline'

    " NERDTree
    Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

    " typescripting
    Plug 'Quramy/tsuquyomi', { 'for': 'typescript' }
    Plug 'Shougo/vimproc.vim', {'do' : 'make'}
    Plug 'leafgarland/typescript-vim', { 'for': 'typescript' }

    " Icons!
    " Plug 'ryanoasis/vim-devicons'

    " Theme => neodark
    Plug 'KeitaNakamura/neodark.vim'
  " }
  
call plug#end()
" ---------------------CUSTOMIZATION---------------------
" Hit <esc> to cancel search highlight
nnoremap <esc> :noh<return><esc>

" Control-\ for NERDTreeToggle
map <C-\> :NERDTreeToggle<CR>

" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>

set showcmd                         " Show (partial) command in status line
set relativenumber number           " Show line number on the left

set tabstop=2                       " Width of the tab character
set shiftwidth=2                    " Amout of whitespace insert/remove in NORMAL mode
" set expandtab                       " Use space instead of tab
set softtabstop=2                   " Width of backspace
" set shiftround                      
set ruler
set noswapfile
set list listchars=tab:»·,trail:·,nbsp:·  " Set the list characters as shown

set splitbelow splitright           " Open new split panes to right and bottom, which feels more natural


" Customisations based on house-style (arbitrary)
"  autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab
"  autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab
"  autocmd FileType javascript setlocal ts=2 sts=2 sw=2 noexpandtab

" --------------------THEMES---------------------------
set termguicolors
syntax enable

" let g:neodark#background='black'
let g:neodark#background='gray'
colorscheme neodark
