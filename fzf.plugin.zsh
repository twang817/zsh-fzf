FZF=$(which fzf) || FZF=

if [[ -z "$FZF" ]]; then
    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
    ~/.fzf/install --key-bindings --completion --no-update-rc &> /dev/null
elif [[ ! -f ~/.fzf.zsh ]]; then
  INSTALL=$(cd $(dirname $(readlink -f $FZF))/..; pwd)/install
  $INSTALL --key-bindings --completion --no-update-rc &> /dev/null
fi

source ~/.fzf.zsh
