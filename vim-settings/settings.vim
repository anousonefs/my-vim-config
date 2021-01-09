" file explore
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
let NERDTreeQuitOnOpen=1

" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Toggle
nnoremap <S-q> :NERDTreeToggle<CR>
"nmap <leader>d :NERDTree<CR> 
nnoremap <S-n> :NERDTree<CR> 

" fzf search 
set rtp+=/usr/local/opt/fzf
let $FZF_DEFAULT_COMMAND = 'ag -g ""'

" coc 
let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver']

set statusline^=%{coc#status()}
set number
set mouse=a
set clipboard=unnamedplus
"set cursorline                          " Enable highlighting of the current line
set number
set relativenumber
syntax enable
set noswapfile
set scrolloff=7
set backspace=indent,eol,start
                                
set tabstop=8
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set fileformat=unix

" vim-ctrlspace
set nocompatible
set hidden
set encoding=utf-8
set showtabline=1
let g:CtrlSpaceDefaultMappingKey = "<C-space> "

let mapleader=' '

" theme color
if (has("termguicolors"))
 set termguicolors
endif

" set color for css file
"lua require 'colorizer' .setup()

" Ultisnips
let g:UltiSnipsSnippetDirectories=[$HOME.'/.config/nvim/Ultisnips']
let g:UltiSnipsExpendTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" open new split panes to right and below
set splitright
set splitbelow
" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>
" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" open terminal on ctrl+n
function! OpenTerminal()
  split term://bash
  resize 10
endfunction

nnoremap <c-n> :call OpenTerminal()<CR>



