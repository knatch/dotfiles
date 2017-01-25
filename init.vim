"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" __  ___ .__   __.      ___   .___________.  ______  __    __    "
" |  |/  / |  \ |  |     /   \  |           | /      ||  |  |  |  " 
" |  '  /  |   \|  |    /  ^  \ `---|  |----`|  ,----'|  |__|  |  " 
" |    <   |  . `  |   /  /_\  \    |  |     |  |     |   __   |  " 
" |  .  \  |  |\   |  /  _____  \   |  |     |  `----.|  |  |  |  " 
" |__|\__\ |__| \__| /__/     \__\  |__|      \______||__|  |__|  " 
"                                                                 " 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
                                                               
" Plugins {
  call plug#begin('~/.config/nvim/plugged')

    Plug 'altercation/vim-colors-solarized'
    Plug 'KeitaNakamura/neodark.vim'
    Plug 'itchyny/lightline.vim'
    " sass/scss
    Plug 'tpope/vim-haml', {'for' : 'sass'}

    Plug 'hesselbom/vim-hsftp'
    Plug 'Shougo/vimproc.vim', {'do' : 'make'}
    " typescript 
    Plug 'Quramy/tsuquyomi', {'for' : 'typescript'}
    Plug 'HerringtonDarkholme/yats.vim'

  call plug#end()
" }

" Color & Themes {

  syntax enable
  set termguicolors
  

  let g:lightline = {}
  let g:lightline.colorscheme = 'neodark'

  let g:neodark#background='black'
  colorscheme neodark

" }

" Customizations {
" show command on key bottom right
set showcmd
" show relative line number
set relativenumber number

" switch tab to 2 whitespaces
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" Horizontal split below current.
set splitbelow
" Vertical split to right of current.
set splitright

set noswapfile

set hidden

" Make searching case insensitive unless the query has capital letter
set ignorecase smartcase

" Show next 3 lines while scrolling
if !&scrolloff
  set scrolloff=3
endif
" Show next 5 columns while moving off
if !&sidescrolloff
  set sidescrolloff=5
endif

" <enter>/<shift-enter> to add a line in normal mode
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

" <esc> to cancel search highlight
nnoremap <esc> :noh<return><esc>

" Map ; to :, one less ketstroke
nnoremap ; :

" leader + ew, es, ev, et to open a file in the same directory
cnoremap %% <C-R>=fnameescape(expand('%:h')).'/'<cr>
map <leader>ew :e %%
map <leader>es :sp %%
map <leader>ev :vsp %%
map <leader>et :tabe %%
" }

" Tweaks {

  autocmd BufWinLeave ?* mkview
  autocmd BufWinEnter ?* silent loadview

" }
