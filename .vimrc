colo desert
set number
set ruler
set sw=4
set sts=4
set ts=8
set autoindent
set cin
set smartindent
set hlsearch
set incsearch
set ignorecase
set smartcase
set mouse=a
set autoread
set autochdir
set scrolloff=10
set fencs=utf-8,cp949,euc-kr
syntax on

" Vundle on
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'ciaranm/detectindent'
autocmd BufRead * DetectIndent
Plugin 'mattn/emmet-vim'
let g:user_emmet_install_global = 0
autocmd Filetype xml,html,css EmmetInstall
Plugin 'jiangmiao/auto-pairs'

filetype plugin indent on
" Vundle off

autocmd filetype python setlocal cc=80
autocmd filetype gitcommit setlocal spell textwidth=72 | nnoremap <C-]> 1z=``
autocmd BufRead,BufNewFile *.md,*.rst setlocal spell | nnoremap <C-]> 1z=``

" Force saving root
cnoremap w!! %!sudo tee > /dev/null %

" set cursor
set viewoptions=cursor
autocmd BufWinLeave * mkview
autocmd BufWinEnter * loadview
