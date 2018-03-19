" Plugins {
  call plug#begin('~/.config/nvim/plugged')

    Plug 'itchyny/lightline.vim'
    Plug 'edkolev/tmuxline.vim'
    Plug 'tyrannicaltoucan/vim-quantum'

    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'ervandew/supertab'

    Plug 'ianks/vim-tsx'
    Plug 'hesselbom/vim-hsftp'

    Plug 'pangloss/vim-javascript'
    Plug 'mxw/vim-jsx'

  call plug#end()
" }

" Color & Themes {
  syntax enable

  set background=dark
  set termguicolors
  colorscheme quantum

" }

" Customizations {
filetype plugin on
filetype indent on
" show command on key bottom right
set showcmd
" show relative line number
set relativenumber number

" switch tab to 2 whitespaces
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

set smartindent

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

" add - to key word
set iskeyword+=-

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

map <leader>eew :e **/*
map <leader>eev :vsp **/*
map <leader>eet :tabe **/*

" nerdtreetoggle
" map <C-n> :NERDTreeToggle<CR>

" Don't offer to open certain files/directories
set wildignore+=*.bmp,*.gif,*.ico,*.jpg,*.png,*.ico
set wildignore+=*.pdf,*.psd
set wildignore+=node_modules/*,bower_components/*

autocmd BufNewFile,BufRead *.tsx   set syntax=javascript.jsx

" Use deoplete.
let g:deoplete#enable_at_startup = 1
" }
