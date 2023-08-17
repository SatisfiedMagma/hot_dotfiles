"Setting Basic Things

set number "line numbers
set wrap "wraps long lines
set mouse=a
set showmatch "matching brackets
set ttyfast "faster scrolling speed
set noshowmode
set tabstop=4 
set shiftwidth=4
set ruler
set autoindent
set smartindent
set splitright "terminal position
syntax on

"Plugin Setup
if filereadable(expand("/home/pragyan/.config/vim/.vimrc.plug"))
	source ~/.config/vim/.vimrc.plug
endif 

"Color Scheme
set termguicolors
colorscheme ayu

"Airline Configuration
let g:airline_theme='ayu_dark'
let g:airline#extensions#whitespace#enabled = 0

"coc-config
"Tab trigger
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()

"NERDTree Configuration
map <C-b> :NERDTreeToggle<CR>

"Python Support
autocmd Filetype python nnoremap <buffer> <F5> :w<CR>:vert ter python3 "%"<CR>
