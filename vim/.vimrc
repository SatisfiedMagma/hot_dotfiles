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
syntax on

"Plugin Setup
if filereadable(expand("/home/pragyan/.config/vim/.vimrc.plug"))
	source ~/.config/vim/.vimrc.plug
endif 

set termguicolors
colorscheme ayu

" use <tab> to trigger completion and navigate to the next complete item
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()

"Trying to run code automatically with F5
autocmd Filetype python nnoremap <buffer> <F5> :w<CR>:vert ter python3 "%"<CR>
set splitright
