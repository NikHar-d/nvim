set number
set tabstop=4
set shiftwidth=4
set expandtab
set mouse=a

colorscheme habamax


inoremap <C-s> <esc>:w<CR>
nnoremap <C-s> <esc>:w<CR>

noremap <C-a> <esc>:noh<CR>

inoremap <C-v> <C-r>+
nnoremap <C-v> i<C-r>+<esc>
vnoremap <C-c> "+y

nnoremap <C-d> a<esc><S-v>ypgi<esc>j
inoremap <C-d> <esc><S-v>ypgi<esc>ja

nnoremap <A-k> a<esc><S-v>xkkpgv<esc>kk
nnoremap <A-j> a<esc><S-v>xpgv<esc>j
inoremap <A-k> <esc><S-v>xkkpgv<esc>kka
inoremap <A-j> <esc><S-v>xpgv<esc>ja

nnoremap <C-j> a<esc>:<<CR>gi<Left><Left><esc>
nnoremap <C-k> a<esc>:><CR>gi<Right><Right><esc>
vnoremap <C-j> :<<CR>gv
vnoremap <C-k> :><CR>gv
inoremap <C-j> <esc>:<<CR>gi<Left><Left>
inoremap <C-k> <esc>:><CR>gi<Right><Right>


call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'neovim/nvim-lspconfig'
Plug 'microsoft/pyright'
call plug#end()

colorscheme gruvbox

lua vim.lsp.config('clangd', { cmd = { 'clangd', '--background-index', '--clang-tidy' } })
lua vim.lsp.enable('clangd')
lua vim.lsp.enable('pyright')

inoremap <S-Tab> <C-x><C-o>

nnoremap <F1> <C-]>
nnoremap <S-F1> <C-t>
inoremap <F1> <esc><C-]>

noremap <F2> :lua vim.diagnostic.open_float()<CR>
inoremap <F2> <esc>:lua vim.diagnostic.open_float()<CR>a

nnoremap <F3> gcc
