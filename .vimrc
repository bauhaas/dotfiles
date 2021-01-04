"Vim Settings
set mouse=a
set nu
syntax on
set autoindent
set hlsearch
set noswapfile
"Set tab to 4 space in length
set shiftwidth=4
set tabstop=4
set smartindent
set smarttab
set cursorline
set colorcolumn=80
set t_Co=256
set background=dark
set listchars=eol:$,tab:>-,space:.
set nowrap
"Lightline Settigns
set laststatus=2
set noshowmode

"Plugin
call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'mg979/vim-visual-multi'
Plug 'scrooloose/syntastic'
"Plug 'alexandregv/norminette-vim'
Plug 'preservim/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

"NERDTree Settings
map <F4> :NERDTreeToggle<CR>
autocmd vimenter * NERDTree "open nerdtree automatically
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif "close nerdtree if only nerdtree open
autocmd vimenter * wincmd w
"Syntastic Settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

:colorscheme gruvbox

"MAPPING
nnoremap <F3> :set hlsearch!<CR>
nnoremap <F5> :set list!<CR>
nnoremap <C-c> "+yy
vnoremap <C-c> "+y

"VIM 8.2 BUG (display unknown char on exiting vim)
let &t_TI= ""
let &t_TE= ""

"YCM
let g:ycm_key_list_select_completion = ['<Enter>']

" Enable norminette-vim (and gcc)
let g:syntastic_c_checkers = ['norminette', 'gcc']
let g:syntastic_aggregate_errors = 1

" Set the path to norminette (do no set if using norminette of 42 mac)
let g:syntastic_c_norminette_exec = '~/.norminette/norminette.rb'

" Support headers (.h)
let g:c_syntax_for_h = 1
let g:syntastic_c_include_dirs = ['include', '../include', '../../include', 'libft', '../libft/include', '../../libft/include']

" Pass custom arguments to norminette (this one ignores 42header)
let g:syntastic_c_norminette_args = '-R CheckTopCommentHeader'

" Check errors when opening a file (disable to speed up startup time)
let g:syntastic_check_on_open = 1

" Enable error list
let g:syntastic_always_populate_loc_list = 1

" Automatically open error list
let g:syntastic_auto_loc_list = 1

" Skip check when closing
let g:syntastic_check_on_wq = 0
