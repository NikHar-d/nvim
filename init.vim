set number
set relativenumber
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

nnoremap <A-h> a<esc>:<<CR>gi<Left><Left><esc>
nnoremap <A-l> a<esc>:><CR>gi<Right><Right><esc>
vnoremap <A-h> :<<CR>gv
vnoremap <A-l> :><CR>gv
inoremap <A-h> <esc>:<<CR>gi<Left><Left>
inoremap <A-l> <esc>:><CR>gi<Right><Right>


call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'neovim/nvim-lspconfig'
Plug 'microsoft/pyright'
Plug 'ibhagwan/fzf-lua'
Plug 'akinsho/bufferline.nvim'
call plug#end()


set termguicolors
lua require("bufferline").setup{}

nnoremap <Space>w <esc>:bdelete!<CR>
nnoremap <Space>j <esc>:bp<CR>
nnoremap <Space>k <esc>:bn<CR>

colorscheme gruvbox

lua vim.lsp.config('clangd', { cmd = { 'clangd', '--background-index', '--clang-tidy' } })
lua vim.lsp.enable('clangd')
lua vim.lsp.enable('pyright')

inoremap <S-Tab> <C-x><C-o>

nnoremap <F1> <C-]>
nnoremap <S-F1> <C-t>
inoremap <F1> <esc><C-]>

noremap <F2> :lua vim.diagnostic.open_float()<CR>
inoremap <F2> <esc>:lua vim.diagnostic.open_float()<CR>

nnoremap <A-F1> :lua vim.lsp.buf.hover()<CR> 
inoremap <A-F1> <esc>:lua vim.lsp.buf.hover()<CR> 

nnoremap <Space>f :FzfLua files<CR>
