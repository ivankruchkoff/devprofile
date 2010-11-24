" An example for a vimrc file.
"
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last change:	2002 Sep 19
"
" To use it, copy it to
"     for Unix and OS/2:  ~/.vimrc
"	      for Amiga:  s:.vimrc
"  for MS-DOS and Win32:  $VIM\_vimrc
"	    for OpenVMS:  sys$login:.vimrc

" When started as "evim", evim.vim will already have done these settings.
if v:progname =~? "evim"
  finish
endif

" temporary because dealing with large files
set syntax=off
" set synmaxcol=0
"
" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
    set backup		" keep a backup file
" set backup
endif
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching
" start: Bernie's customizations to .vimrc
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set ignorecase
set smartcase
set smartindent
set nowrap
set directory=~/.tmp,~/tmp,~,/tmp
set backupdir=~/.tmp,~/tmp,~,/tmp
set writebackup 
set linebreak
set modelines=1
set nostartofline
" this tagfile is depending on the project...will think of a better way.
set tags=./tags,tags
" set tags=./tags
" set tags=./tags,~/sites/adit-cluster/tags

let g:locateopen_ignorecase = 1
" gotta figure this syntax out for sure
"map <F10> :set paste<CR>
"map <F11> :set nopaste<CR>
"imap <F10> <C-O>:set paste<CR>
"imap <F11> <nop>
"set pastetoggle=<F11>

" gotta figure this syntax out for sure
"map <F8> :set paste<CR>
"map <F9> :set nopaste<CR>
"imap <F8> <C-O>:set paste<CR>
"imap <F9> <nop>
set pastetoggle=<F8>
" noremap <silent><leader>bw :WMToggle<CR>


map <c-w><c-t> :WMToggle<cr> 

" EnhancedCommentify
" let g:EnhCommentifyUseAltKeys = 'No'
" let g:EnhCommentifyTraditionalMode = 'Yes'
" let g:EnhCommentifyPretty = 'Yes'
" let g:EnhCommentifyRespectIndent = 'Yes'
let g:EnhCommentifyBindInInsert = 'No'
let g:EnhCommentifyMultiPartBlocks = 'Yes'
let g:EnhCommentifyPretty = 'Yes'
let g:EnhCommentifyRespectIndent = 'Yes'
let g:EnhCommentifyUseBlockIndent = 'Yes'


"bufexplorer
"let g:miniBufExplMapWindowNavVim = 1
"let g:miniBufExplMapWindowNavArrows = 1
"let g:miniBufExplMapCTabSwitchBufs = 1
"let g:miniBufExplModSelTarget = 1 
"let g:miniBufExplUseSingleClick = 1
let g:bufExplorerShowRelativePath = 1
let g:bufExplorerSplitOutPathName = 0

"Project
" let g:proj_window_width = 24
let g:proj_window_increment =10 
" let g:proj_flags = "imstgFc"
"let g:proj_flags = "imstgc"
let g:proj_flags = "imstg"
" just making up the below to try and shut up the squeaking from Project
"let b:proj_resize_command = 1
"nmap <silent> <Leader>P :Project<CR>
nmap <silent> <Leader>P <Plug>ToggleProject

"set makeprg=/usr/bin/efm_perl.pl\ -c\ %\ $*
"set makeprg=~/bin/efm_perl.pl\ -c\ %\ $*
"set errorformat=%f:%l:%m

" :colo evening

set makeprg=php\ -l\ %
set errorformat=%m\ in\ %f\ on\ line\ %l
"let g:p4SortSettings = 0
"runtime perforce/perforceutils.vim
"runtime perforce/perforcemenu.vim
" let g:p4EnableMenu = 1

"nnoremap <silent> <F10> :TlistToggle<CR>
noremap <silent><Leader>bt :TlistToggle<CR>
noremap <silent><Leader>bto :TlistOpen<CR>
noremap <silent><Leader>bo :TlistOpen<CR>

let g:Tlist_Open=1
let g:Tlist_Show_One_File=1
let g:Tlist_Exit_OnlyWindow=1
let g:Tlist_Auto_Highlight_Tag=1
let g:Tlist_Highlight_Tag=1
let g:Tlist_File_Fold_Auto_Close=1
let g:Tlist_WinWidth=35
let g:Tlist_Process_File_Always=1
let g:Tlist_Sort_Type = "name"
"let tlist_php_settings = 'php;c:class;f:function;v:variables'
let tlist_php_settings = 'php;c:class;f:function'
" statusline=%<%f%=%([%{Tlist_Get_Tagname_By_Line()}]%)
" statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
" statusline=%<%f\ %h%m%r%=([%{Tlist_Get_Tagname_By_Line()}])%-14.(%l,%c%V%)\ %P
set statusline=%02n:%<%f\ %h%m%r%=[%{Tlist_Get_Tagname_By_Line()}]\ \ %-14.(%l,%c%V%)\ %P
" set title titlestring=%<%f\ %([%{Tlist_Get_Tagname_By_Line()}]%)
set laststatus=2
set scrolloff=5

:abbr teh the
:abbr wrok work

let php_sql_query=1
let php_htmlInStrings=1
"let php_folding=1
source ~/.vim/php-doc.vim
" inoremap <C-P> <ESC>:call PhpDocSingle()<CR>
" nnoremap <C-P> :call PhpDocSingle()<CR>
" vnoremap <C-P> :call PhpDocRange()<CR> 
noremap <silent><leader>bp :call PhpDocSingle()<CR>

" this is to allow for multiple backups of the same file, but with unique
" backups. seems to work!
" http://vimdoc.sourceforge.net/htmldoc/options.html#%27backupext%27
" au BufWritePre * let &bex = '-' . strftime("%Y%b%d-%X") . '~'
" newer version do avoid the weird : / thingy on mac, and maybe everywhere
au BufWritePre * let &bex = '-' . strftime("%Y%b%dT%H-%M-%S") . '~'
" having problems with above. Or not.

autocmd FileType php let php_sql_query=1
" does exactly that. highlights html inside of php strings
autocmd FileType php let php_htmlInStrings=1
" discourages use oh short tags. c'mon its deprecated remember
autocmd FileType php let php_noShortTags=1
" automagically folds functions & methods. this is getting IDE-like isn't it?
" autocmd FileType php let php_folding=1



" map <F5> <Esc>:EnableFastPHPFolds<Cr>
" map <F6> <Esc>:EnablePHPFolds<Cr>
" map <F7> <Esc>:DisablePHPFolds<Cr> 

"set runtimepath+=/home/berniedavid/.vim/phpdoc/doc
set showtabline=1
"cursorline is cul or nocul "
set cursorline
" toggle line numbers with \n"
noremap <silent><leader>bc :set cursorline!<CR>
noremap <silent><leader>bn :set number!<CR>
noremap <silent><leader>n :set number!<CR>
noremap <silent><leader>bw :set wrap!<CR>
nmap <silent><leader>bh :call ToggleHLSearch()<CR>
nmap <silent><leader>bx :Exp<CR>
nmap <silent><leader>bxs :Sexp<CR>
nmap <silent><leader>bxml :!xmllint --nonet --noout %<CR>

let g:autoclose_loaded = 0
" :highlight BUG cterm=BOLD
" :highlight NOTE cterm=BOLD
let g:xml_syntax_folding = 1
set foldmethod=syntax

function ToggleHLSearch()
    if &hls
        set nohls
    else
        set hls
    endif
endfunction

set viminfo='100,f1
:runtime! ftplugin/man.vim

set fileformats=unix,dos,mac

" Protect large files from sourcing and other overhead.
" Files become read only
if !exists("my_auto_commands_loaded")
  let my_auto_commands_loaded = 1
  " Large files are > 10M
  " Set options:
  " eventignore+=FileType (no syntax highlighting etc
  " assumes FileType always on)
  " noswapfile (save copy of file)
  " bufhidden=unload (save memory when other file is viewed)
  " buftype=nowritefile (is read-only)
  " undolevels=-1 (no undo possible)
  let g:LargeFile = 1024 * 1024 * 20
  augroup LargeFile
    autocmd BufReadPre * let f=expand("<afile>") | if getfsize(f) > g:LargeFile | set eventignore+=FileType | setlocal noswapfile bufhidden=unload buftype=nowrite undolevels=-1 | else | set eventignore-=FileType | endif
    augroup END
endif

" start of line
:cnoremap <C-A>         <Home>
" back one character
:cnoremap <C-B>         <Left>
" delete character under cursor
" hold on, I really missed C-D to show the matching file list
":cnoremap <C-D>         <Del>
" end of line
:cnoremap <C-E>         <End>
" forward one character
:cnoremap <C-F>         <Right>
" recall newer command-line
":cnoremap <C-N>         <Down>
" recall previous (older) command-line
":cnoremap <C-P>         <Up>
" back one word
:cnoremap <Esc><C-B>    <S-Left>
" forward one word
:cnoremap <Esc><C-F>    <S-Right>
set wildmenu
" I like a small scroll value
set scroll=12
set guioptions=egmrLtTb
" end: Bernie's customizations to .vimrc

" For Win32 GUI: remove 't' flag from 'guioptions': no tearoff menu entries
" let &guioptions = substitute(&guioptions, "t", "", "g")

" Don't use Ex mode, use Q for formatting
map Q gq

" This is an alternative that also works in block mode, but the deleted
" text is lost and it only works for putting the current register.
"vnoremap p "_dp

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif


" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

  augroup END

else

  set autoindent		" always set autoindenting on

endif " has("autocmd")

if $VIM_CRONTAB == "true"
    set nobackup
    set nowritebackup
endif

" Ivan's changes
set nu " show line numbers by default
set wrap " enable line wrapping
noremap <silent><Leader>t :NERDTreeToggle<CR>
" imap <Esc> NO
nnoremap k gk
nnoremap j gj
cmap w!! %!sudo tee > /dev/null %
set guifont=Inconsolata:h18
noremap <silent><Leader>q :shell<CR>
nnoremap <silent> <F3> :Grep<CR> 
nmap . .`[

nmap <F1> <Esc> 
nmap <F2> <ESC>:call SaveAndQuit()<CR>
nmap <F4> <ESC>:vsplit<CR> 
nmap <F5> <ESC>:split<CR>
" F6 sets all split files to vertical
nmap <F6> <ESC><c-w>t<c-w>K<CR> 
" F7 sets all split files to horizontal
nmap <F7> <ESC><c-w>t<c-w>H<CR>

function SaveAndQuit()
    mksession! ~/sessions/Session.vim
    wqa
endfunction
