set nocompatible              " be iMproved, required

so ~/.vim/plugins.vim


syntax enable


set backspace=indent,eol,start          		 	 "Work as every backspace in most IDEs"
set number                               		         "Set line numbers
set showtabline=2						 "Show tabs at the top
let mapleader=','
set autowriteall                                                 "autosave when switch buffers
set tabstop=8
set expandtab
set softtabstop=4
set shiftwidth=4
set autoread

set smartindent                                                  "Automatically indent when adding a curly bracket, etc.

set complete=.,w,b,u

"------------Visuals-----------"
"colorscheme xoria256
"set colors for terminal
set t_Co=256
colorscheme xoria256 
set cursorline
set showmatch


"------------Search-----------"
set hlsearch
set incsearch
set ignorecase                                                    " Ignore case when searching.




"-----------Plugins-----------"

"/ CtrlP
let g:ctrlp_match_window = 'order:ttb,min:1,max:30,results:30'
"let g:ctrlp_custom_ignore = 'node_modules' for ignore of folders
let g:ctrlp_working_path_mode = 0

"Ag searcher
let g:ag_working_path_mode="r"

"Greplace
set grepprg=ag

let g:grep_cmd_opts = '--line-numbers --noheading'


"easy navigation
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

"easy navigaton buffers
nmap <c-Left> :bp<cr>
nmap <c-Right> :bn<cr>
nmap <c-w> :bd<cr>

"/ultrasnip
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsSnippetsDir        = $HOME.'/.vim/UltiSnips/'
let g:UltiSnipsSnippetDirectories=["UltiSnips"]

"powerline
let g:Powerline_symbols = 'fancy'
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)
let g:airline#extensions#tabline#enabled = 1 
let g:airline#extensions#tabline#fnamemod = ':t'

"tagbar toggle
nmap <F8> :TagbarToggle<cr>

"php autohint
imap <c-space> <c-x><c-o>

"------------Mappings-----------"

"autoopen vimrc
nmap <Leader>ev :tabedit $MYVIMRC<cr>
"simple highlight removel
nmap <Leader><space> :nohlsearch<cr>
"make nardtree easies to togll
nmap <Leader>nav :NERDTreeToggle<cr>
"search whole project with ctags
nmap <Leader>f :tag<space>
"go to method or variable using ctags
nmap <c-F> :CtrlPBufTag<cr>
nmap <c-B> <c-]>
"search recent files
nmap <c-R> :CtrlPMRUFiles<cr>
"delete between the quotes
nmap <BS> ci'
"make ctrl+s to save the file
nmap <c-s> :w<cr>
imap <c-s> <Esc>:w<cr> 
"jump around
nmap <a-left> <c-i>
nmap <a-right> <c-o>



"---------Auto-Commands--------"

"autosrouce vimrc file on save.
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END

"notes and tips
" paste from clipboard -> "+p
" ctags -R --exclude=@.ctagsignore .
"
"
"
"





