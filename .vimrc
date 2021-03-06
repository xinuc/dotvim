" Xinuc's .vimrc
" by Nugroho Herucahyono <xinuc@xinuc.org>

" Duh. I'm using VIM
set nocompatible

" backspace
set backspace=indent,eol,start

" wrapping
set wrap
set linebreak

" trailling
set list
set listchars=tab:>-,trail:.

" search
set incsearch
set hlsearch
set ignorecase

" cmd history
set history=1000

" indent
set softtabstop=2
set tabstop=2
"set smarttab
set shiftwidth=2
"set autoindent
"set smartindent
"set expandtab
set cindent
set cpoptions-=J

" window
set winminheight=0

" other display
set ch=2
set mousehide
set et!

"set number
set scrolloff=2
set ruler

"guioptions
set go=aiA

set showmatch
set matchtime=1
set backspace=indent,eol,start
set cursorline
set hidden
set ofu=syntaxcomplete#Complete

" bottom
set showcmd
set showmode

" I love Monaco
set guifont=Monaco\ 10

map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>
map <S-Tab> :NERDTreeToggle<CR>
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-H> <C-W>h
map <C-L> <C-W>l
map ;; :! 
map ,y "+y
map ,p "+gp
map ,tt :%s/\t/  /g<CR>
map <A-"> ysiw"
map <A-(> ysiw)
map <A-)> ysiw)
map <C-Backspace> db
map ,f :FuzzyFinderTextMate<CR>
map ,b :FuzzyFinderBuffer<CR>
map ,r :ruby finder.rescan!<CR>
map ,jj :! java -jar /usr/local/clojure/clojure.jar %<CR>
map ,jn :! java -jar /usr/local/clojure/clojure.jar < %<CR>

map ,l :set list!<CR>

nmap <silent> ,t :CommandT<CR>

" finger sugar for xinuc_cucumber.vim
map ,uff :Cucumber f<CR>
map ,ufl :Cucumber l<CR>
map ,ufo :Cucumber o<CR>
map ,ufa :Cucumber a<CR>
map ,ufc :Cucumber<CR>

" fuzzyfinder
let g:fuzzy_matching_limit='50'
let g:fuzzy_ignore='*.log, data/*, data_test/*, data_test/**, tmp/*, coverage/*'
if filereadable(expand('./vendor'))
  let g:fuzzy_roots=['app', 'lib', 'config', 'spec', 'test', 'features', 'public']
endif

syntax on
filetype plugin indent on

""if $COLORTERM == 'gnome-terminal'
""    set term=gnome-256color
""   colorscheme slate 
""endif

let clj_want_gorilla = 1
let clj_highlight_builtins = 1

set listchars=tab:▸\ ,eol:¬
