set number "line numbers
set wrap "wraps long lines
set mouse=a
set showmatch "matching brackets
set ttyfast "faster scrolling speed
set relativenumber
set noshowmode
set tabstop=4 
set shiftwidth=4
set ruler
set foldcolumn=2
set autoindent
set smartindent
set splitright "terminal position
set clipboard=unnamedplus "yank copies into system_clipboard
syntax on

"Plugin Setup
if filereadable(expand("/home/pragyan/.config/vim/.vimrc.plug"))
	source ~/.config/vim/.vimrc.plug
endif 

"Color Scheme
set termguicolors

let g:tokyonight_enable_italic = 1
colorscheme tokyonight " change bg0 in plugin file to 151520

hi Search    guifg=#1a1b26 guibg=#9eb2f2 gui=bold   " blue for all matches
hi IncSearch guifg=#1a1b26 guibg=#e0af68 gui=bold   " orange for current match
hi FoldColumn guibg=NONE " adding left margin

set hlsearch          " highlight matches
set incsearch         " live search (for IncSearch)
set ignorecase smartcase

"Airline Configuration
let g:airline_theme='tokyonight'
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
autocmd Filetype c nnoremap <buffer> <F5> :w<CR>:!gcc -o %:r % && ./%:r<CR>
