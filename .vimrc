"set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim/
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

 " let Vundle manage Vundle
  " required! 
Bundle 'gmarik/vundle'
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" Powerline Things
set noshowmode
set laststatus=2
set encoding=utf-8
set t_Co=256
let g:Powerline_symbols = 'fancy'


syntax on
set nonu
set ic
set ai smarttab smartindent
set showmatch
set ts=4
set shiftwidth=4

set number
set noic
set ruler


" use visual bell instead of beeping
set vb

" incremental search
set incsearch

" syntax highlighting
set bg=dark
:source /Users/jstelmach/solarized.vim

" autoindent
"autocmd FileType perl set autoindent|set smartindent

autocmd FileType * set noexpandtab
autocmd FileType python set expandtab


" CSS
" ---
autocmd FileType css setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2


" Javascript
" ----------
autocmd FileType javascript setlocal expandtab shiftwidth=2 tabstop=4 softtabstop=4
let javascript_enable_domhtmlcss=1


highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
