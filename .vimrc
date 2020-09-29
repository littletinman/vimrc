call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'preservim/nerdtree'
Plug 'tomasiser/vim-code-dark'
Plug 'codcodog/simplebuffer.vim'

call plug#end()

:set mouse=a

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

colorscheme codedark
let g:airline_theme = 'codedark'
