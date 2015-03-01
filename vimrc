" Pathogen Setting 
execute pathogen#infect()

" Vim php plugin
" http://joncairns.com/2012/05/using-vim-as-a-php-ide/


" Vim Config
" -------------------------
filetype indent on
syntax on
filetype on
"set nowrap
set wrap
set tabstop=4
"set linebreak

" Easy Paste
"set paste
set clipboard=unnamed

" Color
set t_Co=256

"Serach Case Insensitive
set ignorecase
set smartcase
set hlsearch
set incsearch

" Indent
set smartindent
set shiftwidth=4
set expandtab

" Performance 
set nocursorcolumn
set nocursorline
syntax sync minlines=256
set ttyfast
set lazyredraw

" Visual paste delete without save to register
vmap p "_dP

" No backup files
set nobackup
set noswapfile

" Display number line
set number

" Highlight current line 
set cursorline

"Auto-completion menu
set wildmenu

"Auto Reload File
set autoread
"set wildmode=list:longest

"AutoComplete Omnicomplete
" Continue typing to select desired item
set completeopt+=longest

" History
set history=1000 

" NERD Commenter 
"inoremap ,c <C-o>:call NERDComment(0,"toggle")<C-m>

" Show file path on status bar

" Ctag Config
" http://rc3.org/2013/01/05/vim-and-ctags/
"set tags=./tags,tags;
set tags=./tags;/

" Leader Key
let mapleader = ","

" Mouse Option
set mousemodel=extend
" set mouse=a

" Color Theme
" https://github.com/zeis/vim-kolor - downland theme
"colorscheme kolor
"colorscheme solarized

" https://github.com/altercation/vim-colors-solarized
"set background=dark
"colorscheme peacock

colorscheme jellybeans
"colorscheme candystripe

"let g:jellybeans_use_lowcolor_black = 0
"colorscheme candystripe
"colorscheme mustang
"colorscheme distinguished
" Molokai Theme setting
"colorscheme molokai
"colorscheme monokai

"colorscheme kolor

"let g:molokai_original = 0
"let g:rehash256 = 1
"let g:solarized_termcolors=256
"set background=dark
"colorscheme solarized

" Vim Plugins
" --------------------------

" CtrP
" http://kien.github.io/ctrlp.vim/#installation
set runtimepath^=~/.vim/bundle/ctrlp.vim
" https://github.com/kien/ctrlp.vim/issues/181
"let g:ctrlp_root_markers = ['.project_root', '.git']
let g:ctrlp_root_markers = ['.project_root']
let g:ctrlp_use_caching = 1
"let g:ctrlp_working_path_mode = ""
let g:ctrlp_working_path_mode = 2
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.svn
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_cache_dir = $HOME.'/.cache/ctrlp'
let g:ctrlp_max_files=0
let g:ctrlp_max_depth=50
let g:ctrlp_clear_cache_on_exit = 0
"let g:ctrlp_cmd = 'CtrlPMRU'

noremap <C-x> :CtrlP ~/www<CR>

" Airline
" https://github.com/bling/vim-airline/blob/master/README.md
set laststatus=2
let g:airline_theme = 'dark'

" Show full file path on status line
let g:airline_section_c = '%F'

" TabLine Plug
" https://github.com/bling/vim-airline/issues/371
" Rsolve Tabline and Airline conflict
"let g:airline#extensions#tabline#tab_nr_type = 1
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'
"" Just show the filename (no path) in the tab
"let g:airline#extensions#tabline#fnamemod = ':t'

" Change TagList display
" http://rustyrazorblade.com/2010/10/customize-taglist-plugin-display/
let tlist_php_settings = 'php;c:class;f:function'
let Tlist_Exit_OnlyWindow = 1     " exit if taglist is last window open
let Tlist_Show_One_File = 1       " Only show tags for current buffer
let Tlist_Enable_Fold_Column = 0  " no fold column (only showing one file)
let Tlist_Use_Right_Window = 1    " Show Tlist pane on the right instead of defaul left

" phpAutoComplete
" https://github.com/shawncplus/phpcomplete.vim
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
"let g:phpcomplete_relax_static_constraint = 1
"let g:phpcomplete_parse_docblock_comments = 1
"let g:phpcomplete_enhance_jump_to_definition = 0 
" Remove preview window  made, these lines close it on movement in insert mode or when leaving
" http://stackoverflow.com/questions/3105307/how-do-you-automatically-remove-the-preview-window-after-autocompletion-in-vim
" Disable pop-up preview 
set completeopt-=preview
" insert mode
"autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
"autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" neocomplcache
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
"let g:neocomplcache_enable_at_startup = 0
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
if !exists('g:neocomplcache_omni_patterns')
      let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'

" EasyMoniton 
" http://www.vim.org/scripts/script.php?script_id=3526
let g:EasyMotion_leader_key = '<Leader>' 

" Resovle Tags searching error
" http://stackoverflow.com/questions/5017500/vim-difficulty-setting-up-ctags-source-in-subdirectories-dont-see-tags-file-i

set tags=tags;/

" Ack
noremap <Leader>a :Ack <cword><cr>
"noremap <Leader>a :r! grep -Rn <cword> ./ <cr>

"ctrlp-funky
let g:ctrlp_extensions = ['funky'] 
"noremap <Leader>g :CtrlPFunky<CR>
noremap <C-m> :CtrlPFunky<CR>

"ctrlp-smarttabs
nmap <C-n> :CtrlPSmartTabs<CR>

" Custom Key Map
" --------------------------
" Tab navigation  F8 & F9
map <F8> gt
map <F7> gT

" Tab navigation Ctrl+j & Ctrl+k
noremap <C-j> :tabp<CR>
noremap <C-k> :tabn<CR>

" Tab Firefox like tab navigation Ctrl+j & Ctrl+k
noremap <C-right> :tabn<CR>
noremap <C-left> :tabp<CR>

" Tab Firefox like Window navigation Ctrl+j & Ctrl+k
noremap <S-up> <c-w>k
noremap <S-down> <c-w>j
noremap <S-left> <c-w>h
noremap <S-right> <c-w>l

" Window navigation Shift+h & Shfit+l
map <S-h> <c-w>h
map <S-l> <c-w>l

" Scroll Shift+j & Shift+k
map <S-j> <C-d>
map <S-k> <C-u>

" Select entire funciton block Shfit+f
map <S-f> vaBV

" Tag List Shotcut
"noremap <A-t> :Tlist<CR>

" function search :ta shortcut
"noremap <C-> :ta 

" Moving code of blocks
vnoremap < <gv
vnoremap > >gv

" Open Ctag in new tab by press F12
" http://joncairns.com/2012/05/using-vim-as-a-php-ide/
"nmap <F12> <C-w><C-]><C-w>T 
nmap <C-h> <C-w><C-]><C-w>T 

" Open current split in new tab
nmap <S-t> <C-w>T

" Open Ctag in split by press F12
"nmap <F12> <C-w><C-]> 
nmap <F12> <C-w>g<C-]> 
"nmap <F12> :vsp <CR>:exec("tag ".expand("<cword>"))<CR> 

" Map the default Ctrl ] to show tag matches list
nmap <Leader>s :vsp <CR>:exec("tjump ".expand("<cword>"))<CR>
nmap <C-]> :exec("tjump ".expand("<cword>"))<CR>

" Ctrl+t open new tab
noremap <C-t> :tabnew<CR>
"noremap <C-l> :tablast<CR>
"nmap <C-]> :tag <cword>

" avoid Ex mode
nnoremap Q <nop>

" Ctrl+l Last active Tab
let g:lasttab = 1
nmap <C-l> :exe "tabn ".g:lasttab<CR>
au TabLeave * let g:lasttab = tabpagenr()

" Windwos Navigation
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

" Navigation tab by numbers
noremap <Leader>1 1gt
noremap <Leader>2 2gt
noremap <Leader>3 3gt
noremap <Leader>4 4gt
noremap <Leader>5 5gt
noremap <Leader>6 6gt
noremap <Leader>7 7gt
noremap <Leader>8 8gt
noremap <Leader>9 9gt

" Tab key to switch windows
set autochdir

"Ctrl+s split window
"noremap <C-s> <C-w>v<CR>
noremap <S-s> <C-w>v<CR>
"map <Tab> <C-W>W:cd %:p:h<CR>:<CR>

" Ctrl s to save
nmap <c-s> :w<CR>
imap <c-s> <Esc><c-s>

" Function number keys
" --------------------------------
" Toggle Number
"nmap <C-n> :set nonumber!<CR>
nmap <F2> :NERDTreeToggle<CR>
nmap <F3> :TlistToggle<CR>
nmap <F4> :set nonumber!<CR>
set pastetoggle=<F6>
map <F9> :set nowrap! <CR>

" Search function ta
"noremap <Leader>g :ta 

" Open tag definition in vectical split
"map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

" Drupal file extention
if has("autocmd")
  " Drupal *.module and *.install files.
  augroup module
    autocmd BufRead,BufNewFile *.module set filetype=php
    autocmd BufRead,BufNewFile *.install set filetype=php
    autocmd BufRead,BufNewFile *.test set filetype=php
    autocmd BufRead,BufNewFile *.inc set filetype=php
    autocmd BufRead,BufNewFile *.profile set filetype=php
    autocmd BufRead,BufNewFile *.view set filetype=php
  augroup END
endif


" Custom Key Map
" --------------------------
"  Sudo save file
cmap w!! w !sudo tee % >/dev/null

" Note
" --------------------------

" Taglist switch tab error
"https://www.mail-archive.com/vim_use@googlegroups.com/msg22905.html


" To clear vim background color
" http://ubuntuforums.org/showthread.php?t=1410305
" 	C-a and type: 
"  	:bce on

" Folding
"set nofoldenable


" Vim Xdebug note
" Add ?XDEBUG_SESSION_START=1 at the end of the url
" disalbe /etc/php.ini  xdebug.remote_connect_back = on
" http://www.vim.org/scripts/script.php?script_id=1929
" http://www.vim.org/scripts/script.php?script_id=1152

" New xdebug plugin
" https://github.com/joonty/vdebug
