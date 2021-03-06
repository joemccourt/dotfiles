" Make vim more useful
set nocompatible

" Turn on 256 colors
"set t_Co=256
set t_Co=256
" Turn out the lights
set background=dark
syntax on
colorscheme molokai

" Change mapleader
let mapleader=" "

" Pathogen stuff
call pathogen#infect()
filetype plugin indent on

set autoread " Set to auto read when a file is changed from the outside
set showmode " Show mode in bottom of window
set matchpairs+=<:> " Add XML style elements to matching
set backspace=indent,eol,start
set cursorline " Highlight current line
set diffopt+=iwhite " Ignore whitespace changes (focus on code changes)
set encoding=utf-8 nobomb " BOM often causes trouble
set esckeys " Allow cursor keys in insert mode.
set ruler " Show cursor location
set magic "Set magic on, for regular expressions
set noerrorbells " Disable error bells.
set nojoinspaces " Only insert single space after a '.', '?' and '!' with a join command.
set nostartofline " Don't reset cursor to start of line when moving around.
set nu " Enable line numbers.
set nosmarttab " At start of line, <Tab> inserts shiftwidth spaces, <Bs> deletes shiftwidth spaces.
"set undofile " Persistent Undo.
set showmatch "Show matching bracets when text indicator is over them
set guicursor+=a:blinkon0
set visualbell t_vb= " turn off the bell

" Indenting
set autoindent " Copy indent from last line when starting new line
set smarttab " Indent further in or out based on previous line
set tabstop=4 " Set tab stop to 4
set shiftwidth=4 " Set shift width to 4
set expandtab

" searching
set hlsearch " Highlight searches
set incsearch " Highlight dynamically as pattern is typed.
set ignorecase " Ignore case of searches.
set smartcase " Ignore 'ignorecase' if search patter contains uppercase characters.

" Show special characters
:set listchars=tab:>-,trail:~,extends:>,precedes:<
:set list

"" directories
"" set backup locations and enable
"set backup
"set backupdir=~/.backup
"set directory=~/.backup
"set undodir=~/.undo

" Sudo write (<leader>W)
noremap <leader>W :w !sudo tee %<CR>

" Trigger NERDTree
noremap <leader>n :NERDTree<CR>

" Remap :W to :w
cnoreabbrev W w

" Indent/unident block (<leader>]) (<leader>[)
nnoremap <leader>] >i{<CR>
nnoremap <leader>[ <i{<CR>

" Vim on the iPad
if &term == "xterm-ipad"
  nnoremap <Tab> <Esc>
  vnoremap <Tab> <Esc>gV
  onoremap <Tab> <Esc>
  inoremap <Tab> <Esc>`^
  inoremap <Leader><Tab> <Tab>
endif

" Strip trailing whitespace (<leader>ss)
function! StripWhitespace ()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    :%s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfunction
noremap <leader>ss :call StripWhitespace ()<CR>
