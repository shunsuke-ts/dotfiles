if has('vim_starting')
  if has('win32')
    set runtimepath+=~/.vim,~/.vim/autoload
  endif
endif

let g:configdir = '~/.vim'
if has('nvim')
  let g:configdir = '~/.config/nvim'
endif

set encoding=utf-8
scriptencoding utf-8
set fileencodings=iso-2022-jp,cp932,sjis,euc-jp,utf-8
set fileformats=unix,dos,mac

set mouse=a
set clipboard& clipboard+=unnamedplus,unnamed
set shellslash
set visualbell t_vb=
set noerrorbells

set title
set number
set relativenumber
set ruler
set cursorline
set cursorcolumn
set showcmd
set showmatch
set laststatus=2
set cmdheight=2
set helpheight=999
set list
set listchars=eol:$,tab:>-,trail:-,extends:>,precedes:<,nbsp:%
set showmatch
set matchtime=3
set matchpairs& matchpairs+=<:>
set formatoptions-=ro
"set formatoptions+=
set textwidth=0
set colorcolumn=80
set shiftround
set virtualedit=all
set switchbuf=useopen

set wildmenu
set wildmode=list:longest,full
set history=9999

set backspace=indent,eol,start
set whichwrap=b,s,hl,<,>,[,]
set scrolloff=8
set sidescrolloff=16
set sidescroll=1

set ignorecase
set smartcase
set incsearch
set hlsearch
set wrapscan
set gdefault
" set magic

set hidden
set confirm
set autoread
set backup
"set writebackup
set swapfile
if !isdirectory(expand('~/.vim/tmp'))
  call mkdir(expand('~/.vim/tmp'), 'p')
endif
set backupdir=~/.vim/tmp
set directory=~/.vim/tmp
set viminfo+=n~/.vim/tmp/viminfo.txt
set undodir=~/.vim/tmp

