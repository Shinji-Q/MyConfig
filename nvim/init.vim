let $ConfigDir='~/.config/nvim'
set noswapfile
set nobackup
set undofile

" command bar
set wildmenu
set wildmode=full

" Search Settings
set ignorecase
set incsearch
set hlsearch
set smartcase

" Text settings
syntax on
set autoindent
set smartindent
set list

set smarttab
set tabstop=4  softtabstop=4 sw=4
set backspace=indent,eol,start
set nowrap

" GUI settings
set number relativenumber
set ruler
set showcmd

" Colors
set colorcolumn=100
colorscheme default
highlight ColorColumn term=reverse ctermbg=1 guibg=lightgrey

" shortcuts

map <C-l> <C-w>l
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-n> :tabe 

noremap <C-s><C-j> :split<CR><C-w>j
noremap <C-s><C-l> :vsplit<CR><C-w>l
noremap <C-q> :q<CR>


noremap <C-o> :NvimTreeOpen<CR>
noremap <F3> :set hlsearch!<CR>
noremap <F2> :tab sb<CR>

" slit screen and open terminal
map <C-t> :terminal<CR>a
" terminal shortcuts
tnoremap <C-w> <C-\><C-n><C-w>
" esc to leave terminal 
tnoremap <Esc> <C-\><C-n>
tnoremap <C-q> <C-c>exit<CR>l 
"<C-\><C-n>:bdelete!<CR>


" plugins
call plug#begin('~/.vim/plugged')

	Plug 'https://github.com/ycm-core/YouCompleteMe.git'
	Plug 'kyazdani42/nvim-web-devicons'
	Plug 'kyazdani42/nvim-tree.lua'
	Plug 'windwp/nvim-autopairs'
	Plug 'vim-airline/vim-airline'
	
	" java completion 'minimal' setup
	" Plug 'neovim/nvim-lspconfig'
	" Plug 'hrsh7th/nvim-cmp' 
	" Plug 'hrsh7th/cmp-nvim-lsp'
	" Plug 'williamboman/nvim-lsp-installer'
	" Plug 'puremourning/vimspector'
	" Plug 'mfussenegger/nvim-jdtls'
	" Plug 'artur-shaik/jc.nvim'

	Plug 'artur-shaik/vim-javacomplete2' " deprecated

call plug#end()

" javacomplete2 configuration #BEGIN
 
nmap <F4> <Plug>(JavaComplete-Imports-AddSmart)
imap <F4> <Plug>(JavaComplete-Imports-AddSmart)

nmap <F5> <Plug>(JavaComplete-Imports-Add)
imap <F5> <Plug>(JavaComplete-Imports-Add)

nmap <F6> <Plug>(JavaComplete-Imports-AddMissing)
imap <F6> <Plug>(JavaComplete-Imports-AddMissing)

nmap <F7> <Plug>(JavaComplete-Imports-RemoveUnused)
imap <F7> <Plug>(JavaComplete-Imports-RemoveUnused)

nmap <F10> :JCgenerateAccessorSetterGetter<CR>
imap <F10> :JCgenerateAccessorSetterGetter<CR>

nmap <F11> :JCgenerateAccessors<CR>
imap <F11> :JCgenerateAccessors<CR>

" slightly better syntax highligh
" javacomplete2 configuration #END
" call lua scripts
:luafile $ConfigDir/nvimtree.lua
:luafile $ConfigDir/autopair.lua

	
" Setup nerdtree to open files in new tab
" let NERDTreeCustomOpenArgs={'file':{'where': 'p', 'reuse': 'all', 'stay': 1}, 'dir':{}}

" Setup vim-airline
" if !exists('g:airline_symbols')
" 	let g:airline_symbols = {}
" endif

 let g:airline_left_sep = ''
 let g:airline_left_alt_sep = ''
 let g:airline_right_sep = ''
 let g:airline_right_alt_sep = ''
" autocmd VimEnter * AirlineTheme luna

