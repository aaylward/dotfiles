set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-vividchalk'
Bundle "rking/ag.vim"
Bundle 'altercation/vim-colors-solarized'
Plugin 'highwaynoise/chuck.vim'
Bundle 'wincent/command-t'
Plugin 'cespare/vim-toml'
Bundle "scrooloose/nerdtree.git"
Bundle "othree/eregex.vim.git"
" Bundle "scrooloose/syntastic.git"
Plugin 'rust-lang/rust.vim'
Plugin 'airblade/vim-gitgutter'
" Plugin 'tomlion/vim-solidity'
Plugin 'Valloric/YouCompleteMe.git'
Bundle 'tikhomirov/vim-glsl'
Bundle 'scrooloose/nerdcommenter'
Bundle 'tpope/vim-salve.git'
Bundle 'tpope/vim-projectionist.git'
Bundle 'tpope/vim-dispatch.git'
Bundle 'tpope/vim-fireplace.git'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'guns/vim-sexp.git'
Bundle 'tpope/vim-sexp-mappings-for-regular-people.git'
Bundle 'tpope/vim-repeat.git'
Bundle 'tpope/vim-surround.git'
Plugin 'elixir-lang/vim-elixir'
Plugin 'ajhager/elm-vim'
Plugin 'dleonard0/pony-vim-syntax'
Plugin 'vim-erlang/vim-erlang-compiler'
Plugin 'vim-erlang/vim-erlang-omnicomplete'
Plugin '4Evergreen4/vim-hardy.git'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'jiangmiao/auto-pairs'

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

" Triger `autoread` when files changes on disk
" https://unix.stackexchange.com/questions/149209/refresh-changed-content-of-file-opened-in-vim/383044#383044
" https://vi.stackexchange.com/questions/13692/prevent-focusgained-autocmd-running-in-command-line-editing-mode
autocmd FocusGained,BufEnter,CursorHold,CursorHoldI * if mode() != 'c' | checktime | endif
" Notification after file change
" https://vi.stackexchange.com/questions/13091/autocmd-event-for-autoread
autocmd FileChangedShellPost *
  \ echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None

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
set noerrorbells
set visualbell  " somehow this turns off the audio bell-- no idea why

colorscheme vividchalk
set guifont=BitStream\ Vera\ Sans\ Mono\ 12"
" set guifont=Menlo:h13.00

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

set clipboard=unnamed
set nobackup
set writebackup

:set guioptions-=m  "remove menu bar
:set guioptions-=T  "remove toolbar

" make it easier to do command line stuff
nnoremap ; :

" allow sudo write after you've already opened a file
cmap w!! w !sudo tee % >/dev/null

" move yankring director to vim-other directory
let g:yankring_history_dir='$HOME/.vim-other/yankring'

" turns underscore into a word boundary
" http://superuser.com/questions/244040/how-do-i-change-until-the-next-underscore-in-vim
" set iskeyword-=_  " turned off cuz it was causing syntax highlighting fuckups

set nu
autocmd BufEnter *.py set ai sw=4 ts=4 sta et fo=croql
autocmd BufEnter *.c set ai sw=2 ts=2 sta et fo=croql
autocmd BufEnter *.cpp set ai sw=2 ts=2 sta et fo=croql
autocmd BufEnter *.cc set ai sw=2 ts=2 sta et fo=croql
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

" let g:syntastic_cpp_check_header = 1
" let g:syntastic_javascript_checkers = ['eslint']

" autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()
nnoremap <leader>h <Esc>:call ToggleHardMode()<CR>

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" YouCompleteMe
let g:ycm_auto_trigger = 1
let g:ycm_confirm_extra_conf = 0
let g:ycm_global_ycm_extra_conf = '~/src/dotfiles/ycm_extra_config.py'
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_semantic_triggers =  {
  \   'c' : ['->', '.','re![_a-zA-z0-9]'],
  \   'rust' : ['.', '::', 're![_a-zA-z0-9]'],
  \   'ocaml' : ['.', '#'],
  \   'cpp,objcpp' : ['->', '.', '::','re![_a-zA-Z0-9]'],
  \   'cs,java,javascript,typescript,d,python,perl6,scala,vb,elixir,go' : ['.'],
  \   'ruby' : ['.', '::'],
  \   'lua' : ['.', ':'],
  \   'erlang' : [':'],
  \ }

" Highlight Class and Function names
" Ripped off from https://github.com/Valloric/YouCompleteMe/issues/1232#issuecomment-62077297
function! s:HighlightFunctionsAndClasses()
  syn match cCustomFunc      "\w\+\s*\((\)\@="
  syn match cCustomClass     "\w\+\s*\(::\)\@="

  hi def link cCustomFunc      Function
  hi def link cCustomClass     Function
endfunction

" TODO: this should:
" a) not be called for every filetype
" b) be in a separate plugin
au Syntax * call s:HighlightFunctionsAndClasses()
