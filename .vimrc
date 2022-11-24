"Setting Basic Things

set number "line numbers
set wrap "wraps long lines
set mouse=a
set showmatch "matching brackets
set ttyfast "faster scrolling speed
set noshowmode
set tabstop=2
set ruler
set noautoindent


"Plugin Setup
if filereadable(expand("~/.vimrc.plug"))
	source ~/.vimrc.plug
endif
