
if !exists('g:vscode')
    source $HOME/.config/nvim/plug-config/polyglot.vim
endif

if exists('g:vscode')
    " VS Code extension
    source $HOME/.config/nvim/vscode/settings.vim
    source $HOME/.config/nvim/plug-config/easymotion.vim
    source $HOME/.config/nvim/plug-config/highlightyank.vim
else
    source $HOME/.config/nvim/vim-plug/plugins.vim
    source $HOME/.config/nvim/vim-settings/settings.vim
    source $HOME/.config/nvim/vim-keymap/keymap.vim

    "Themes
    source $HOME/.config/nvim/vim-themes/dracula.vim
    "source $HOME/.config/nvim/vim-themes/purify.vim
    "source $HOME/.config/nvim/vim-themes/onedark.vim

    " Coc
    source $HOME/.config/nvim/plug-config/coc.vim

    " Status line
    source $HOME/.config/nvim/vim-themes/airline.vim

    " fzf
    source $HOME/.config/nvim/plug-config/fzf.vim

    " floaterm
    source $HOME/.config/nvim/plug-config/floaterm.vim

    " which-key
    "source $HOME/.config/nvim/vim-keymap/which-key.vim

endif



