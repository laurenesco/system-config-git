" GENERAL -------------------------------------------------------

set nocompatible " We are not messing with being vi compatible

set backspace=indent,eol,start " Fix backspace issue

imap <S-BS> <BS>

"filetype on " Enable file type detection

"filetype plugin on " Enable plugins and load plugins for file type

"filetype indent on " Load an indent file for the detected file type

syntax on " Turn syntax highlighting on

set hlsearch " Set highlight search
hi Search ctermbg=Red
hi Search ctermfg=LightYellow

set showmatch " Show matching words during a search

set showmode " Show mode

set ignorecase " Ignore capital letters during search
set smartcase " But allow for searching by capital specifically

set incsearch " Incrementally highlight matching searches

set tabstop=3 " Set tab width

"set expandtab " Allow spaces instead of tabs

" Enable autocompletion menu after pressing tab
"set wildmenu
"set wildmode=list:longest
"set wildignore=*.docx,*.jpg,*.png,*.gif,*.pyc,*.flv,*.img,*xlsx

fun! TrimWhiteSpace()
	let l:save_cursor = getpos('.')
	%s/\s\+$//e
	call setpos('.', l:save_cursor)
endfun

command! Trim call TrimWhiteSpace()
