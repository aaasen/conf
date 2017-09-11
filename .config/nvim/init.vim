
" vim-plug
call plug#begin('~/.local/share/nvim/plugged')

Plug 'junegunn/fzf', { 'dir': '/usr/local/opt/fzf', 'do': './install --all' }
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'mhartington/oceanic-next'
Plug 'christoomey/vim-tmux-navigator'
Plug 'neomake/neomake'

call plug#end()

let mapleader = ","

" split navigation
" nnoremap <C-J> <C-W><C-J>
" nnoremap <C-K> <C-W><C-K>
" nnoremap <C-L> <C-W><C-L>
" nnoremap <C-H> <C-W><C-H>

" split opening
set splitbelow
set splitright

" fzf
nnoremap <C-P> :FZF<CR>

" oceanic next
set termguicolors
syntax enable
colorscheme OceanicNext

" line numbers
set number

" tabs
set tabstop=4
set shiftwidth=4
set expandtab

" jsx
let g:jsx_ext_required = 0 " jsx syntax highlighting in js files
autocmd Filetype javascript setlocal et ts=2 sw=2 sts=2
autocmd Filetype less setlocal et ts=2 sw=2 sts=2

" keep selection after indent
vnoremap < <gv
vnoremap > >gv

" neomake
autocmd! BufWritePost,BufEnter * Neomake
nmap <Leader><Space>o :lopen<CR>      " open location window
nmap <Leader><Space>c :lclose<CR>     " close location window
nmap <Leader><Space>, :ll<CR>         " go to current error/warning
nmap <Leader><Space>n :lnext<CR>      " next error/warning
nmap <Leader><Space>p :lprev<CR>      " previous error/warning

" eslint
let g:neomake_javascript_enabled_makers = ['eslint']

