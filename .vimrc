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

"-----------Plugins-----------"

"/ CtrlP
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,results:30'
"let g:ctrlp_custom_ignore = 'node_modules' for ignore of folders


"easy navigation

nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l


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

"------------Mappings-----------"

"autoopen vimrc
nmap <Leader>ev :tabedit $MYVIMRC<cr>
"simple highlight removel
nmap <Leader><space> :nohlsearch<cr>
"make nardtree easies to togll
nmap <Leader>nav :NERDTreeToggle<cr>
"go to method or variable using ctags
nmap <c-F> :CtrlPBufTag<cr>
"search recent files
nmap <c-R> :CtrlPMRUFiles<cr>
"delete between the quotes
nmap <BS> ci'

 


"---------Auto-Commands--------"

"autosrouce vimrc file on save.
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END


