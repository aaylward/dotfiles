set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'kchmck/vim-coffee-script'
Bundle "rking/ag.vim"
Bundle 'altercation/vim-colors-solarized'
Bundle 'wincent/command-t'
Bundle "scrooloose/nerdtree.git"
Bundle "othree/eregex.vim.git"
Bundle "scrooloose/syntastic.git"
Plugin 'rust-lang/rust.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'Valloric/YouCompleteMe.git'
Bundle 'tikhomirov/vim-glsl'
Bundle 'scrooloose/nerdcommenter'
Bundle 'geekjuice/vim-mocha'
Bundle 'tpope/vim-salve.git'
Bundle 'tpope/vim-projectionist.git'
Bundle 'tpope/vim-dispatch.git'
Bundle 'tpope/vim-fireplace.git'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'tpope/vim-sexp-mappings-for-regular-people.git'
Bundle 'guns/vim-sexp.git'
Bundle 'tpope/vim-repeat.git'
Bundle 'tpope/vim-surround.git'
Plugin 'elixir-lang/vim-elixir'
Plugin 'ajhager/elm-vim'
Plugin 'dleonard0/pony-vim-syntax'
Plugin 'vim-erlang/vim-erlang-compiler'
Plugin 'vim-erlang/vim-erlang-omnicomplete'

call vundle#end()

syntax on
filetype plugin indent on


" more useful mapleader
let mapleader = ","

" allow unsaved buffers in the background
set hidden

" more useful jump is brought closer (jump to line AND column)
nnoremap ' `
nnoremap ` '

" longer command history
set history=1000
set undolevels=1000

" TAB completion up to point of ambiguity
set wildmode=list:longest

" Make searches case sensitive only when there is upper case in them:
set ignorecase 
set smartcase

" Make title visible in vim
set title

" Show 2 more lines on scroll edges
set scrolloff=3

" Put all backup files in a single spot
" set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
" set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set noswapfile
set directory^=$HOME/.vim-other/swap//
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

" nerd
autocmd vimenter * NERDTree

" Intuitive backspacing in insert mode
set backspace=indent,eol,start
 
" Highlight search terms...
set hlsearch
set incsearch " ...dynamically as they are typed.

" turn off highlighting when it's annoying
nmap <silent> <leader>/ :silent :nohlsearch<CR>

" show whitespace when you need to
set listchars=tab:>-,trail:·,eol:$
nmap <silent> <leader>ws :set nolist!<CR>

" make it easier to edit .vimrc and apply
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" clean up prompt mess?
set shortmess=atI

" no audio bell
" set visualbell  " annoying
set noerrorbells
set visualbell  " somehow this turns off the audio bell-- no idea why

colorscheme vividchalk
"set guifont="BitStream Vera Sans Mono 11"
set guifont=Monaco:h13.00

set nowrap        " don't wrap lines
set tabstop=2     " a tab is two spaces
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set shiftwidth=2  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set smarttab      " insert tabs on the start of a line according to
                  "    shiftwidth, not tabstop
set expandtab

set wildignore=*.swp,*.bak,*.pyc,*.class,node_modules/**,bower_components/**

set clipboard=unnamed "uses system clipboard
set nobackup
set writebackup

" language specific formatting stuff

au! BufRead,BufNewFile *.djml setfiletype htmldjango
autocmd filetype htmldjango set shiftwidth=2
autocmd filetype htmldjango set tabstop=2

au! BufRead,BufNewFile *.hbs setfiletype htmldjango
au! BufRead,BufNewFile *.styl setfiletype css

" make it easier to do command line stuff
nnoremap ; :

" allow sudo write after you've already opened a file
cmap w!! w !sudo tee % >/dev/null

" move yankring director to vim-other directory
let g:yankring_history_dir='$HOME/.vim-other/yankring'

" supertab customization
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview
set omnifunc=syntaxcomplete#Complete

" turns underscore into a word boundary
" http://superuser.com/questions/244040/how-do-i-change-until-the-next-underscore-in-vim
" set iskeyword-=_  " turned off cuz it was causing syntax highlighting fuckups

let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1

set nu
autocmd BufEnter *.py set ai sw=4 ts=4 sta et fo=croql
autocmd BufEnter *.c set ai sw=2 ts=2 sta et fo=croql
autocmd BufEnter *.cpp set ai sw=2 ts=2 sta et fo=croql
autocmd BufEnter *.rb set ai sw=2 ts=2 sta et fo=croql
autocmd BufEnter *.elm set ai sw=2 ts=2 sta et fo=croql
autocmd BufEnter *.cls set ai sw=4 ts=4 sta et fo=croql
autocmd BufEnter *.coffee set ai sw=2 ts=2 sta et fo=croql
autocmd BufEnter *.js set ai sw=2 ts=2 sta et fo=croql
autocmd BufEnter *.rs set ai sw=2 ts=2 sta et fo=croql
autocmd BufEnter *.go set ai sw=8 ts=8 sta et fo=croql

nmap <C-H> :tabprev<CR>
nmap <C-L> :tabnext<CR>
nmap <C-P> :CommandT<CR>
nnoremap <space> 10jzz
nnoremap <backspace> 10kzz


let g:syntastic_cpp_check_header = 1
let g:syntastic_javascript_checkers = ['eslint']

" autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()
nnoremap <leader>h <Esc>:call ToggleHardMode()<CR>

let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
execute "set rtp+=" . g:opamshare . "/merlin/vim"

"autocmd FileType ocaml source /Users/andy/.opam/system/share/vim/syntax/ocp-indent.vim

let g:syntastic_ocaml_checkers = ['merlin']
let g:ycm_confirm_extra_conf = 0

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

