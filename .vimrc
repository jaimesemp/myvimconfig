 
 "fuera ficheros
 :set noswapfile 

  set nocompatible               " be iMproved
  filetype off                   " required!
  filetype plugin on

  :set guifont=Ubuntu\Mono\ 12


  set rtp+=~/.vim/bundle/vundle/
  call vundle#rc()
  :set background=dark


  "vundle config:
  set nocompatible
  filetype off
  set rtp+=~/.vim/bundle/vundle/
  call vundle#rc()

  map su ysiwb       "map su to () a word
  set nu
  set nowrap                     	" wrap long lines
  set autoindent                 	" indent at the same level of the previous line
  set shiftwidth=2               	" use indents of 4 spaces
  set expandtab 	  	     		" tabs are spaces, not tabs
  set tabstop=2 					" an indentation every four columns
  set softtabstop=2 				" let backspace delete indent
  "set matchpairs+=<:>            	" match, to be used with % 
  set pastetoggle=<F12>          	" pastetoggle (sane indentation on pastes)
  "set comments=sl:/*,mb:*,elx:*/  " auto format comment blocks
  " Remove trailing whitespaces and ^M chars
  autocmd FileType c,cpp,java,php,js,python,twig,xml,yml autocmd BufWritePre <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))

  :colorscheme monokai
  :syntax on
  syntax on
  filetype on
  au BufNewFile,BufRead *.hx set filetype=javascript
  
  :set guioptions=aegim
  Bundle 'tsaleh/vim-align'
  "Bundle 'tpope/vim-surround'
  Bundle 'ervandew/supertab'
  Bundle 'scrooloose/nerdtree'
  Bundle 'tpope/vim-speeddating'
  Bundle 'tpope/vim-surround'
  Bundle 'maxbrunsfeld/vim-yankstack'
  Bundle 'git://git.wincent.com/command-t.git'
  "Bundle 'zaiste/tmux.vim'
  "Bundle 'benmills/vimux'
  Bundle 'scrooloose/nerdcommenter'
  "Bundle 'troydm/easybuffer.vim'
  "Bundle 'Spaceghost/vim-matchit'
  Bundle 'vim-scripts/Conque-Shell'
  Bundle 'fholgado/minibufexpl.vim'  
  Bundle 'tsaleh/vim-matchit'
  Bundle 'mattn/emmet-vim'
  Bundle 'kien/ctrlp.vim'

  Plugin 'https://github.com/xolox/vim-misc'

  Plugin 'easytags.vim' "you must install too: sudo apt-get install exuberant-ctags

  "php secondaryplugins:
  Plugin 'Tagbar'
  "tagbar toggle:
  nmap <F8> :TagbarToggle<CR>

  "Php plugins :"
  Plugin 'php.vim'
  Plugin 'phpqa'

  
  
  nmap <leader>be :EasyBufferToggle<enter>
  noremap <leader>o <Esc>:CommandT<CR>
  noremap <leader>O <Esc>:CommandTFlush<CR>
  noremap <leader>m <Esc>:CommandTBuffer<CR>
  nmap <leader># :call NERDComment(0, "invert")<cr>
  vmap <leader># :call NERDComment(0, "invert")<cr>
  "smash 
  inoremap jk <esc>
  inoremap kj <esc>

  map , :

  " Begining & End of line in Normal mode
  noremap H ^
  noremap L g_

  " more natural movement with wrap on
  nnoremap j gj
  nnoremap k gk
  vnoremap j gj
  vnoremap k gk

  " Easy splitted window navigation
  noremap <C-h>  <C-w>h
  noremap <C-j>  <C-w>j
  noremap <C-k>  <C-w>k
  noremap <C-l>  <C-w>l

  " Easy buffer navigation
  noremap <leader>bp :bprevious<cr>
  noremap <leader>bn :bnext<cr>

  " For moving lines (^] is a special character; use <M-k> and <M-j> if it works)
  " Bubbling lines
  nnoremap <A-j> :m .+1<CR>==
  nnoremap <A-k> :m .-2<CR>==
  inoremap <A-j> <Esc>:m .+1<CR>==gi
  inoremap <A-k> <Esc>:m .-2<CR>==gi
  vnoremap <A-j> :m '>+1<CR>gv=gv
  vnoremap <A-k> :m '<-2<CR>gv=gv
" Pagedown when press Space
  map <Space> <c-D>
" Page Up when press Shift Space
  map <S-Space> <c-U>

  inoremap {      {}<Left>
  inoremap {<CR>  {<CR>}<Esc>O
  inoremap {{     {
  inoremap {}     {}
  inoremap        (  ()<Left>
  inoremap <expr> )  strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"
  inoremap        [  []<Left>

  "minibufexpl plugin option:
  let g:miniBufExplMapWindowNavVim = 1 
  let g:miniBufExplMapWindowNavArrows = 1 
  let g:miniBufExplMapCTabSwitchBufs = 1 
  let g:miniBufExplModSelTarget = 1 
  map gt :bn<cr>
  map gT :bp<cr>

  :set foldmethod=indent

  set ignorecase
  set smartcase
  set showmatch
  set gdefault
  set hlsearch
  nmap <silent> <leader>hh :set invhlsearch<CR>
  nmap <silent> <leader>ll :set invlist<CR>
  nmap <silent> <leader>nn :set invnumber<CR>
  nmap <silent> <leader>pp :set invpaste<CR>
  nmap <silent> <leader>ii :set invrelativenumber<CR>

  " clear search matching
  noremap <leader><space> :noh<cr>:call clearmatches()<cr>

  " Don't jump when using * for search
  nnoremap * *<c-o>

  " Keep search matches in the middle of the window.
  nnoremap n nzzzv
  nnoremap N Nzzzv

  " Same when jumping around
  nnoremap g; g;zz
  nnoremap g, g,zz

  "nerdtree
  map <f2> :NERDTreeToggle<cr>
  map <c-i> <c-w>s<c-j>z7<cr>:ConqueTerm bash<cr>
  map <c-o> :wa<cr><c-w>jihaxe compile.hxml<cr>
  map <c-o> :7new<cr><c-w>J:ConqueTerm bash<cr>
  imap <c-o> <esc>:7new<cr><c-w>J:ConqueTerm bash<cr>


  "map <c-o> :w<cr><c-j>ilftp -e 'put ./smiley_points_plugin/smiley_points.php;bye' -u solumake,tocata4455 ftp.solumakers.com//www/portal/wp-content/plugins/smiley_points_plugin<cr> 
  "imap <c-o> jk<c-j>ilftp -e 'put ./smiley_points_plugin/smiley_points.php;bye' -u solumake,tocata4455 ftp.solumakers.com//www/portal/wp-content/plugins/smiley_points_plugin<cr> 
  set wrap
  "php check syntax:
	map <c-b> :!php -l %<CR>
	"extra plugins installed:
	"conqueterm
	"align and autoalign
	"mark
	"highlight can be interesting also
  unmap <tab>
  map <c-s> :set syntax=javascript<cr>
  "call pathogen#infect() 
  

  map <c-n> :tabn<cr>


  "ctrlp :
  let g:ctrlp_map = '<c-p>'
  let g:ctrlp_cmd = 'CtrlP'
  "emmet :
  imap lk <C-y>,
  vmap lk <C-y>,
  vmap <C-y>u <C-y>/
  imap <C-y>u <C-y>/
  "better indent:
  filetype plugin indent on
  "http://vim.wikia.com/wiki/All_folds_open_when_opening_a_file
  set foldlevelstart=20

  
  
"set guioptions-=m  "menu bar
set guioptions-=T  "toolbar
set guioptions-=r  "scrollbar

"""""""""""""""""""""""
"php adjusts:
"""""""""""""""""""""""

"Plugin phpqa:
" Don't run messdetector on save (default = 1)
let g:phpqa_messdetector_autorun = 0

" Don't run codesniffer on save (default = 1)
let g:phpqa_codesniffer_autorun = 0

