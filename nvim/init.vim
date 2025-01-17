" Plugins Configuration
call plug#begin()

" Essential Plugins
Plug 'tpope/vim-surround'                  " Surrounding with ysw)
Plug 'tpope/vim-commentary'               " Commenting with gcc & gc
Plug 'preservim/nerdtree', {'on': 'NERDTreeToggle'} " File tree explorer
Plug 'vim-airline/vim-airline'            " Status bar
Plug 'vim-airline/vim-airline-themes'     " Airline themes
Plug 'ryanoasis/vim-devicons'             " Developer icons
Plug 'preservim/tagbar', {'on': 'TagbarToggle'} " Code navigation
Plug 'junegunn/fzf.vim'                   " Fuzzy finder
Plug 'junegunn/fzf'
Plug 'projekt0n/github-nvim-theme'        " GitHub Dark theme
Plug 'mbbill/undotree'                    " Undo history visualizer
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Intellisense engine
Plug 'lepture/vim-jinja'                  " Jinja templating support
Plug 'tpope/vim-fugitive'                 " Git integration
Plug 'matze/vim-move'                     " Move lines and selections
Plug 'voldikss/vim-floaterm'              " Floating terminal
Plug 'vim-python/python-syntax'           " Python syntax highlighting
Plug 'alvan/vim-closetag'                 " Auto-close HTML tags

call plug#end()

" General Configuration
set number                                " Show absolute line numbers
set relativenumber                        " Show relative line numbers
set mouse=a                               " Enable mouse support
set autoindent                            " Auto-indent
set tabstop=4                             " Number of spaces per tab
set softtabstop=4                         " Spaces per tab in insert mode
set shiftwidth=4                          " Width for auto-indents
set smarttab                              " Use spaces for tab alignment
set encoding=UTF-8                        " Set encoding to UTF-8
set visualbell                            " Disable audible bell
set scrolloff=5                           " Keep 5 lines visible when scrolling
set background=dark                       " Optimize colors for dark themes

" Colorscheme Configuration
let g:github_nvim_theme_dark_mode = 1
let g:github_nvim_theme_options = {
      \ 'hide_end_of_buffer': v:true,
      \ 'dark_sidebar': v:true,
      \ 'dark_float': v:true,
      \ 'comment_style': 'italic',
      \ 'function_style': 'bold',
      \ 'keyword_style': 'bold',
      \ }
colorscheme github_dark
" Airline Configuration
let g:airline_powerline_fonts = 1
let g:airline_theme = 'dark'  " Matching theme for Airline with GitHub Dark

" NERDTree Configuration
let g:NERDTreeDirArrowExpandable = "+"
let g:NERDTreeDirArrowCollapsible = "~"

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-t> :NERDTree<CR>
nnoremap <C-n> :NERDTreeToggle<CR>

" UndoTree Configuration
nnoremap <C-l> :UndotreeToggle<CR>

" Tagbar Configuration
nmap <F6> :TagbarToggle<CR>

" Floating Terminal Configuration
let g:floaterm_keymap_new    = '<F7>'
let g:floaterm_keymap_prev   = '<F8>'
let g:floaterm_keymap_next   = '<F9>'
let g:floaterm_keymap_toggle = '<F12>'
nnoremap <F5> :w<CR>:FloatermNew --autoclose=0 python3 %<CR>

" CoC Configuration
let g:coc_disable_startup_warning = 1
inoremap <expr> <Tab> pumvisible() ? "\<C-N>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-P>" : "\<S-Tab>"
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

" Miscellaneous Key Mappings
nnoremap <F3> :noh<CR> " Clear search highlights

" Disable Middle Mouse Button
map <MiddleMouse> <Nop>
imap <MiddleMouse> <Nop>
