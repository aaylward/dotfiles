set nocompatible

" Required Vundle setup
filetype off
set runtimepath+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'kchmck/vim-coffee-script'
Bundle "mileszs/ack.vim"
Bundle 'altercation/vim-colors-solarized'
Bundle 'kien/ctrlp.vim'
Bundle "scrooloose/nerdtree.git"
Bundle "fatih/vim-go.git"
Bundle "othree/eregex.vim.git"
Bundle "digitaltoad/vim-jade.git"
Bundle "scrooloose/syntastic.git"
Bundle 'wting/rust.vim'

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
set directory^=$HOME/.vim-other/swap//

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
" set number        " always show line numbers  "not really that useful
set shiftwidth=2  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set smarttab      " insert tabs on the start of a line according to
                  "    shiftwidth, not tabstop
set expandtab

set wildignore=*.swp,*.bak,*.pyc,*.class,node_modules/**

set clipboard=unnamed "uses system clipboard
set nobackup
set writebackup


autocmd filetype python set shiftwidth=4
autocmd filetype python set tabstop=4

au! BufRead,BufNewFile *.js setfiletype javascript
autocmd filetype javascript set shiftwidth=2
autocmd filetype javascript set tabstop=2
"
au! BufRead,BufNewFile *.djml setfiletype htmldjango
autocmd filetype htmldjango set shiftwidth=2
autocmd filetype htmldjango set tabstop=2

au! BufRead,BufNewFile *.hbs setfiletype htmldjango
au! BufRead,BufNewFile *.styl setfiletype css

au! BufRead,BufNewFile *.go setfiletype go
autocmd filetype go set shiftwidth=8
autocmd filetype go set tabstop=8

" make it easier to do command line stuff
nnoremap ; :

" allow sudo write after you've already opened a file
cmap w!! w !sudo tee % >/dev/null

" move yankring director to vim-other directory
let g:yankring_history_dir='$HOME/.vim-other/yankring'

" customize zencoding leader
let g:user_zen_leader_key = '<c-a>'

" supertab customization
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview

" turns underscore into a word boundary
" http://superuser.com/questions/244040/how-do-i-change-until-the-next-underscore-in-vim
" set iskeyword-=_  " turned off cuz it was causing syntax highlighting fuckups


set nu
autocmd BufEnter *.py set ai sw=4 ts=4 sta et fo=croql
autocmd BufEnter *.c set ai sw=4 ts=4 sta et fo=croql
autocmd BufEnter *.cpp set ai sw=4 ts=4 sta et fo=croql
autocmd BufEnter *.rb set ai sw=2 ts=2 sta et fo=croql
autocmd BufEnter *.java set ai sw=4 ts=4 sta et fo=croql
autocmd BufEnter *.cls set ai sw=4 ts=4 sta et fo=croql
autocmd BufEnter *.coffee set ai sw=2 ts=2 sta et fo=croql

" au BufWritePost *.coffee silent make!

nmap <C-H> :tabprev<CR>
nmap <C-L> :tabnext<CR>
nmap <C-P> :CommandT<CR>
nnoremap <space> 10jzz
nnoremap <backspace> 10kzz

nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>"
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" ycm options
let g:ycm_global_ycm_extra_conf = '$HOME/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
"set path=/usr/include/c++/4.2.1

let g:syntastic_cpp_check_header = 1

" adding ctags support
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

" autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()
nnoremap <leader>h <Esc>:call ToggleHardMode()<CR>
