" Ensure this is NeoVim
if has("nvim")
    set runtimepath^=~/.vim runtimepath+=~/.vim/after
    let &packpath = &runtimepath
endif

" Initialize plugin manager (vim-plug)
call plug#begin()

" Essential Plugins
Plug 'tpope/vim-surround' " Surrounding ysw)
Plug 'tpope/vim-commentary' " Commenting gcc & gc
Plug 'preservim/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'vim-airline/vim-airline' " Status bar
Plug 'ryanoasis/vim-devicons' " Developer icons
Plug 'preservim/tagbar', {'on': 'TagbarToggle'} " Code navigation
Plug 'junegunn/fzf.vim' " Fuzzy Finder, Needs Silversearcher-ag for :Ag
Plug 'junegunn/fzf'
Plug 'navarasu/onedark.nvim' " Onedark theme
Plug 'morhetz/gruvbox' " Gruvbox theme
Plug 'vim-airline/vim-airline-themes' " Airline themes
Plug 'mbbill/undotree'
Plug 'neoclide/coc.nvim', {'branch': 'release'} " IntelliSense
Plug 'lepture/vim-jinja'
Plug 'tpope/vim-fugitive' " Git integration
Plug 'matze/vim-move' " Easy movement
Plug 'voldikss/vim-floaterm'
Plug 'vim-python/python-syntax'
Plug 'alvan/vim-closetag'

" JavaScript and JSX/React support
Plug 'pangloss/vim-javascript' " Enhanced JavaScript syntax highlighting
Plug 'maxmellon/vim-jsx-pretty' " JSX/React syntax

call plug#end()

" General Configuration
set number
set relativenumber
set mouse=a
set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set encoding=UTF-8
set visualbell
set scrolloff=5

" Colors and Themes
colorscheme onedark
let g:airline_theme='gruvbox'

" NERDTree Configuration
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-t> :NERDTree<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-g> :UndotreeToggle<CR>

" VIM Airline Configuration
let g:airline_powerline_fonts = 1

" Ensure airline_symbols is defined
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" Define the symbols used by airline
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" Tagbar
nmap <F6> :TagbarToggle<CR>

" Floaterm Configuration
let g:floaterm_keymap_new = '<F7>'
let g:floaterm_keymap_prev = '<F8>'
let g:floaterm_keymap_next = '<F9>'
let g:floaterm_keymap_toggle = '<F12>'
nnoremap <F5> :w<CR>:FloatermNew --autoclose=0 python3 %<CR>

" Disable middle mouse button
:map <MiddleMouse> <Nop>
:imap <MiddleMouse> <Nop>
:map <2-MiddleMouse> <Nop>
:imap <2-MiddleMouse> <Nop>
:map <3-MiddleMouse> <Nop>
:imap <3-MiddleMouse> <Nop>
:map <4-MiddleMouse> <Nop>
:imap <4-MiddleMouse> <Nop>

" CoC Keybindings and Configurations
nnoremap <silent> gd <Plug>(coc-definition)
nnoremap <silent> gr <Plug>(coc-references)
nnoremap <silent> gi <Plug>(coc-implementation)
nnoremap <silent> <leader>rn <Plug>(coc-rename)
autocmd BufWritePre *.js,*.jsx,*.ts,*.tsx :CocCommand prettier.formatFile

" Use Enter to confirm a suggestion from the completion menu
inoremap <silent><expr> <CR> pumvisible() ? coc#pum#confirm() : "\<CR>"

" Tab Behavior in Insert Mode
inoremap <expr> <Tab> pumvisible() ? "\<C-N>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-P>" : "\<C-H>"

" Highlighting for JavaScript
autocmd BufNewFile,BufRead *.js,*.jsx set filetype=javascript.jsx

