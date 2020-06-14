" set runtimepath=~/vimrc/vim,~/vimrc/vim/after,\$VIMRUNTIME
" source ~/vimrc/vimrc
" helptags ~/vimrc/vim/doc

set tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab
" Set this. Airline will handle the rest.

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'ryanoasis/vim-devicons'
Plug 'ryanoasis/vim-webdevicons'
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'
Plug 'w0rp/ale'
Plug 'itchyny/lightline.vim'
Plug 'maximbaz/lightline-ale'
Plug 'delphinus/lightline-delphinus'
Plug 'ryanoasis/vim-devicons'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-fugitive'
Plug 'jalvesaq/Nvim-R'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/goyo.vim'
Plug 'majutsushi/tagbar'  " show tags in a bar (functions etc) for easy browsing
Plug 'vim-airline/vim-airline'  " make statusline awesome
Plug 'vim-airline/vim-airline-themes'  " themes for statusline
Plug 'jonathanfilip/vim-lucius'  " nice white colortheme
Plug 'Vimjas/vim-python-pep8-indent'  "better indenting for python
Plug 'kien/ctrlp.vim'  " fuzzy search files
Plug 'tweekmonster/impsort.vim'  " color and sort imports
Plug 'wsdjeg/FlyGrep.vim'  " awesome grep on the fly
Plug 'airblade/vim-gitgutter'  " show git changes to files in gutter
Plug 'tpope/vim-commentary'  "comment-out by gc
Plug 'roxma/nvim-yarp'  " dependency of ncm2
Plug 'HansPinckaers/ncm2-jedi'  " fast python completion (use ncm2 if you want type info or snippet support)
Plug 'ncm2/ncm2-bufword'  " buffer keyword completion
Plug 'ncm2/ncm2-path'  " filepath completion
Plug 'terryma/vim-multiple-cursors'   " multiple cursors
Plug 'rizzatti/dash.vim' " search for terms via Dash.app only for mac
Plug 'eiginn/netrw' " netrw for displaying the tree structure of a folder"

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" path to your python
let g:python3_host_prog = '/usr/local/bin/python3'
let g:python_host_prog = '/usr/local/bin/python2'

set history=10000  " remember more commands and search history
let g:airline#extensions#ale#enabled = 1
let g:lightline#ale#indicator_checking = "\uf110"
let g:lightline#ale#indicator_warnings = "\uf071"
let g:lightline#ale#indicator_errors = "\uf05e"
let g:lightline#ale#indicator_ok = "\uf00c"

let g:netrw_banner       = 0  " removes the netrw banner
let g:netrw_liststyle    = 3  " tree style listing
let g:netrw_browse_split = 4  " see help on this one. lots of useful options
let g:netrw_altv         = 1  " change from left splitting to right splitting
let g:netrw_winsize      = 25 " initial size of new explore windows

" By default netrw leaves unmodified buffers open. This autocommand
" deletes them when they're hidden (using :q for example).
autocmd FileType netrw setl bufhidden=delete



" Switch window mappings
" nmap <silent> <A-Up> :wincmd k<CR>
" nmap <silent> <A-Down> :wincmd j<CR>
" nmap <silent> <A-Left> :wincmd h<CR>
" nmap <silent> <A-Right> :wincmd l<CR>

imap <C-w> <C-o><C-w>
map - <C-W>-
map + <C-W>+

" Colorscheme
colorscheme breezy

" Highlight search and search while typing
set hlsearch
set incsearch
set cpoptions+=x  " stay at seach item when <esc>

" Remove bells (too annoying, i think this is default in neovim)
set noerrorbells
set visualbell
set t_vb=
set relativenumber
set viminfo='20,<1000  " allow copying of more than 50 lines to other applications

" allow cursor to continue to move after reaching the end of a line
set whichwrap+=<,>,h,l,[,]

" set up for ctrlp (ignore certain files)
let g:ctrlp_custom_ignore = '\v\.(npy|jpg|png|gif|bmp|DS_Store|git|hg|svn|tmp|a|o|swp|pyc|so|dll)$'

" keybind to move to the end or begining of a line (insert and normal mode)
imap <C-e> <esc>$i<right>
imap <C-a> <esc>0i
nnoremap <C-e> $
nnoremap <C-a> 0

" move farward or backward one word
imap <A-Left> <esc>b
imap <A-Right> <esc>e
nnoremap <A-Left> b
nnoremap <A-Right> e

" easy block selection with mouse
noremap <M-LeftMouse> <LeftMouse><Esc><C-V>
noremap <M-LeftDrag> <LeftDrag>

" global settings for multiple cursors
let g:multi_cursor_exit_from_visual_mode=1
let g:multi_cursor_exit_from_insert_mode=1

" remove search highlight
nnoremap <C-l> :nohl<CR><C-l>

" compile the file manually
map <C-r> :! compile % &<CR>
" map <C-r> :!setsid /Users/jakejing/.script/autocomp.sh % &<CR>

" automatically deletes all trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e

set nu
set autoindent

" yank to clipboard
if has("clipboard")
  set clipboard=unnamed " copy to the system clipboard
  if has("unnamedplus") " X11 support
    set clipboard+=unnamedplus
  endif
endif


set encoding=UTF-8

" set the font
set guifont=courier_new\ 50

" setting for vim-webdevicons
let g:lightline = {
      \ 'component_function': {
      \   'filetype': 'MyFiletype',
      \   'fileformat': 'MyFileformat',
      \ }
      \ }

function! MyFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction

function! MyFileformat()
  return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
endfunction

" and a handy-dandy function to toggle a Netrw sidebar
" Toggle Vexplore with Ctrl-E
function! ToggleVExplorer()
  if exists("t:expl_buf_num")
      let expl_win_num = bufwinnr(t:expl_buf_num)
      if expl_win_num != -1
          let cur_win_nr = winnr()
          exec expl_win_num . 'wincmd w'
          close
          exec cur_win_nr . 'wincmd w'
          unlet t:expl_buf_num
      else
          unlet t:expl_buf_num
      endif
  else
      exec '1wincmd w'
      Vexplore
      let t:expl_buf_num = bufnr("%")
  endif
endfunction
map <silent> <C-\> :call ToggleVExplorer()<CR>

