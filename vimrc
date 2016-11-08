" Vundle ---------------------- {{{
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'flazz/vim-colorschemes'
Plugin 'tpope/vim-surround'
Plugin 'bling/vim-airline'

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
set visualbell
set cursorline
set ttyfast
set laststatus=2
set relativenumber
set undofile
set ruler                 " Displayer row and col

" Search
set ignorecase          " Ignore case 
set smartcase           " if i do search for somethin uppercase, use case
set hlsearch            " highlight searches
set incsearch           " do incremental searching
set showmatch           " jump to matches when entering regexp

" Clear the search highlight
nnoremap <CR> :noh<CR><CR>"

" Moving around bracket pairs by tab
nnoremap <tab> %
vnoremap <tab> %

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
  set lines=56
  set guioptions=aeci
else
  set t_Co=256
endif
set backspace=indent,eol,start
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

" Rebind C-c to Esc
noremap <C-c> <Esc>


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

" Vim-airlien---------------------- {{{
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'
" }}}
