[ -d ~/.fzf ] || {
    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
    ~/.fzf/install --key-bindings --completion --no-update-rc
}

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
