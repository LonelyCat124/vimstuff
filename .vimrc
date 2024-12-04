"For more options have another look at
"https://dougblack.io/words/a-good-vimrc.html#colors
filetype plugin indent on
" show existing tab with 4 spaces width
 set tabstop=4
" " when indenting with '>', use 4 spaces width
 set shiftwidth=4
" " On pressing tab, insert 4 spaces
 set expandtab

set t_u7=

"Set regent filetype
au BufNewFile,BufRead *.rg set filetype=regent


" Syntax Highlighting
set background=dark
colorscheme badwolf
"colorscheme solarized
syntax enable


"show linenumbers
set number
set relativenumber
"Highlight current line
set cursorline
"show matching parenthesis etc.
set showmatch

"Searching
set hlsearch            " highlight matches

"No folding options for now
"
"Backup options
set backup
set backupdir=~/.vim-tmp
set directory=~/.vim-tmp
set writebackup

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
