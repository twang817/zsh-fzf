if [[ -f ~/.fzf.zsh ]]; then
    source ~/.fzf.zsh
    return
fi

FZF=$(which fzf) || FZF=

if [[ -z "$FZF" ]]; then
    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
    ~/.fzf/install --key-bindings --completion --no-update-rc &> /dev/null
else
    INSTALL=$(cd $(dirname $(readlink -f $FZF))/..; pwd)/install
    $INSTALL --key-bindings --completion --no-update-rc &> /dev/null
fi
  
source ~/.fzf.zsh
