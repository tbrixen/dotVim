" Vundle ---------------------- {{{
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
" Vundle for windows: Follow https://github.com/VundleVim/Vundle.vim/wiki/Vundle-for-Windows
set rtp+=$HOME/vimfiles/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'flazz/vim-colorschemes'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-repeat'
Plugin 'bling/vim-airline'
Plugin 'ervandew/supertab'
" To install YouCompleteMe in windows see https://bitbucket.org/Alexander-Shukaev/vim-youcompleteme-for-windows
Plugin 'Valloric/YouCompleteMe'
Plugin 'w0rp/ale'
Plugin 'Yggdroot/indentLine'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'python-mode/python-mode'

" All of your Plugins must be added before the following line
call vundle#end()            " required
" }}}
filetype plugin indent on    " Automatically detect file types

set showcmd               " Display incomplete commands
set number
set showmode
set hidden                " See :h hidden
set wildmenu
set wildmode=list:longest
set cursorline
set ttyfast
set laststatus=2
set relativenumber
set ruler                 " Displayer row and col

set encoding=utf-8

" Search
set ignorecase          " Ignore case 
set smartcase           " if I do search for somethin uppercase, use case
set hlsearch            " highlight searches
set incsearch           " do incremental searching
set showmatch           " jump to matches when entering regexp

" Clear the search highlight
nnoremap <CR> :noh<CR><CR>"

" Moving around bracket pairs by tab
nnoremap <tab> %
vnoremap <tab> %

" Make space the leader
map <SPACE> <leader>

noremap <C-c> <Esc>
inoremap jk <Esc>
nnoremap <leader>w <Esc>:w<CR>

noremap <C-J> :tabn<CR>
noremap <C-K> :tabp<CR>
noremap <C-L> :bnext<CR>
noremap <C-H> :bprev<CR>

nnoremap <silent> gb :bnext<CR>
nnoremap <silent> gB :bprevious<CR>

" Show buffer list, and accept a buffer name
nnoremap <Leader>bb :ls<CR>:buffer<Space>

colorscheme molokai

syntax enable
if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif
" set backspace=indent,eol,start
set ttimeout
set ttimeoutlen=50
set laststatus=2

" Enable jump between keywords
" [Niel] p 128
runtime macros/matchit.vim


" Tabs
set smartindent
set tabstop=2       " The width of a TAB is set to 2.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 2.
set shiftwidth=2    " Indents will have a width of 2
set softtabstop=2   " Set the number of columns for at TAB
set expandtab       " Expand TABs to space

set colorcolumn=80



" Sets in-line spellchecking
" Guide: http://www.tjansson.dk/2008/10/writing-large-latex-documents-in-vim/
" UNCOMMENT for spellchecking
" set spell
set nospell

" Set local language 
setlocal spell spelllang=en_us
" setlocal spell spelllang=da


" Autofold
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" ========= Plugins ========= "
" Markdown ---------------------- {{{
autocmd BufRead,BufNewFile *.md set filetype=markdown 
nnoremap <Leader>pp :RunSilent pandoc -o /tmp/vim-pandoc-out.pdf %<CR>
nnoremap <Leader>pv :RunSilent open /tmp/vim-pandoc-out.pdf<CR>

" Disable folding of sections
let g:vim_markdown_folding_disabled=1
" Enable latex math highlight
let g:vim_markdown_math=1
" }}}

" Vim-airline---------------------- {{{
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'
" }}}
" YouCompleteMe ---------------------- {{{
" Only do autocomplete in the following files
let g:ycm_filetype_whitelist = { 'cpp': 1, 'c': 1, 'python':1, 'java':1 }

let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
" }}}

" PyMode ---------------------- {{{
let g:pymode_lint = 0
" }}}
