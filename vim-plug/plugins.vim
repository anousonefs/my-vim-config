" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    if exists('g:vscode')
        " Easy motion for VSCode
         Plug 'asvetliakov/vim-easymotion'
        "Plug 'ChristianChiarulli/vscode-easymotion'
        "Plug 'machakann/vim-highlightedyank'
    else
        " Better Syntax Support
        Plug 'sheerun/vim-polyglot'
        " File Explorer
        Plug 'scrooloose/NERDTree'
        " Auto pairs for '(' '[' '{'
        Plug 'jiangmiao/auto-pairs'

        " Themes
        Plug 'dracula/vim'
        Plug 'kyoz/purify'
        Plug 'joshdick/onedark.vim'
        Plug 'morhetz/gruvbox'
        Plug 'whatyouhide/vim-gotham'
        Plug 'ajmwagar/vim-deus'
        Plug 'christophermca/meta5'
        Plug 'rakr/vim-one'
        Plug 'AlessandroYorba/Sierra'
        Plug 'sainnhe/sonokai'
        Plug 'fcpg/vim-orbital'
        Plug 'arcticicestudio/nord-vim'

        " file explorer
        Plug 'neoclide/coc.nvim', {'branch': 'release'}
        Plug 'scrooloose/nerdtree'

        " Status line
        Plug 'vim-airline/vim-airline'
        Plug 'vim-airline/vim-airline-themes'    
        
        " commend
        Plug 'sirver/ultisnips'
        Plug 'preservim/nerdcommenter'
        
        " search file
        Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
        Plug 'junegunn/fzf.vim'
        Plug 'airblade/vim-rooter'

        " color for css file
        Plug 'norcalli/nvim-colorizer.lua'
        
        " floaterm
        Plug 'voldikss/vim-floaterm'

        " which-key
        Plug 'liuchengxu/vim-which-key'
        
        " icon
        Plug 'ryanoasis/vim-devicons'

        " typescript
        Plug 'leafgarland/typescript-vim'
        Plug 'peitalin/vim-jsx-typescript'
    endif

call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif


