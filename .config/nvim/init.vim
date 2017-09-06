
" vim-plug
call plug#begin('~/.local/share/nvim/plugged')

Plug 'junegunn/fzf', { 'dir': '/usr/local/opt/fzf', 'do': './install --all' }
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'mhartington/oceanic-next'
Plug 'christoomey/vim-tmux-navigator'

call plug#end()

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

" jsx
let g:jsx_ext_required = 0 " jsx syntax highlighting in js files

" oceanic next
set termguicolors
syntax enable
colorscheme OceanicNext

