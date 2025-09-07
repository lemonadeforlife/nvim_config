" #### My Core Vim Config for other IDE's etc
" ## Options
set clipboard+=unnamedplus
set conceallevel=0
set ignorecase
set fileencoding=utf-8
set showtabline=2
set smartcase
set smartindent
set expandtab
set shiftwidth=2
set tabstop=2
set cursorline
set number
set guifont=DejaVuSansM\ Nerd\ Font
let mapleader = " "
let maplocalleader = " "
set splitright
set splitbelow

" Smart Edit (for sudo.vim plugin)
let g:suda_smart_edit = 1

" ## Keymaps
" Remap space as leader key
nnoremap <Space> <Nop>
vnoremap <Space> <Nop>
inoremap <Space> <Nop>

" ######## Normal ######
" Resize with arrows
nnoremap <C-Up> :resize +2<CR>
nnoremap <C-Down> :resize -2<CR>
nnoremap <C-Left> :vertical resize -2<CR>
nnoremap <C-Right> :vertical resize +2<CR>

" Bufferline (requires BufferLine plugin)
nnoremap <C-p> :BufferLineTogglePin<CR>
inoremap <C-p> <Esc>:BufferLineTogglePin<CR>i
vnoremap <C-p> :<C-u>BufferLineTogglePin<CR>

" Terminal (if using Vim 8 terminal or plugin)
tnoremap jk <C-\><C-n>
tnoremap <C-h> <C-\><C-n><C-w>h
tnoremap <C-j> <C-\><C-n><C-w>j
tnoremap <C-k> <C-\><C-n><C-w>k
tnoremap <C-l> <C-\><C-n><C-w>l

" ######## Insert ######
inoremap jk <Esc>
inoremap <C-u> <End><C-u>

" ######## Visual ######
" Stay in indent mode
vnoremap < <gv
vnoremap > >gv

" Move text up and down
vnoremap <A-j> :m .+1<CR>==
vnoremap <A-k> :m .-2<CR>==
vnoremap p "_dP

" ######## Visual Block ######
xnoremap J :move '>+1<CR>gv-gv
xnoremap K :move '<-2<CR>gv-gv
xnoremap <A-j> :move '>+1<CR>gv-gv
xnoremap <A-k> :move '<-2<CR>gv-gv
