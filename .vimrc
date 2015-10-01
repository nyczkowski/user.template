" always show status line
set laststatus=2

" display line numbers
set number

" move lines on ALT-j/k
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

" increase/decrease numbers
" set nrformats+=alpha

" -----------------------------------------------------------------------------
" PLUGINS
" -----------------------------------------------------------------------------

" pre-configure VIMPRJ
let g:vimprj_changeCurDirIfVimprjFound=0

" pathogen 
execute pathogen#infect()

" Monokai color scheme
" colorscheme monokai

" my alternative color scheme
colorscheme n_monokai

" color syntax
syntax on

" bufexplorer
nnoremap <silent> <C-S-F12> :BufExplorer<CR>
" nnoremap <silent> <C-S-F8> :BufExplorerHorizontalSplit<CR>
" nnoremap <silent> <C-S-F12> :BufExplorerVerticalSplit<CR>

" spell checker
set spelllang=en_us
nnoremap <silent> <S-F5> :set spell ! spell? <CR>

" toggle highligt search result
set incsearch
set hlsearch
" nnoremap <silent> <S-F2> :set hlsearch ! hlsearch? <CR>

" formating
set ignorecase
set smartcase
set expandtab
set smartindent

" cursor all the time
set ruler

" status height
set cmdheight=2

" show partial commands
set showcmd

" status line
set statusline=[%02n]\ %f\ %(\[%M%R%H]%)%=\ %4l,%02c%2V\ %P%*

" always show status line
set laststatus=2

" default indent
set shiftwidth=3 softtabstop=3

" variables of EnhCommentify
let g:EnhCommentifyUserBindings='No'
let g:EnhCommentifyTraditionalMode='No'
let g:EnhCommentifyFirstLineMode='Yes'
let g:EnhCommentifyPretty='Yes'
let g:EnhCommentifyRespectIndent='Yes'

" peristent undo
if has('persistent_undo')
   set undofile
   set undodir=$HOME/.temp/vim_undo
   endif

" gtags plugin 
let s:Gtags_Plugin_Path = $HOME.'/.vim/bundle/gtags/plugin/gtags.vim'
if filereadable(s:Gtags_Plugin_Path)
   " use my own mappings
   " let Gtags_Auto_Map = 1
   nmap <F2> :copen<CR>
   nmap <F4> :cclose<CR>
   nmap <F5> :Gtags<SPACE>
   nmap <F6> :Gtags -f %<CR>
   " nmap <F7> :GtagsCursor<CR>
   " nmap <F8> :Gozilla<CR>
   nmap <C-n> :cn<CR>
   nmap <C-p> :cp<CR>
   nmap <C-\><C-]> :GtagsCursor<CR>

   let Gtags_Result = "ctags-x"
   let Gtags_Efm = "%*\\S%*\\s%l%\\s%f%\\s%m"
endif

" TagBar plugin settings
nnoremap <silent> <F7> :TagbarToggle<CR>

" CTAGS 
" set tags+=/usr/src/tags;/usr/include/tags

" Folding
inoremap <F9> <C-O>za
nnoremap <F9> za
onoremap <F9> <C-C>za
vnoremap <F9> zf

