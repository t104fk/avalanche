export LANG=ja_JP.UTF-8
export EDITOR=vim
export VISUAL=vim

source $HOME/.path

# improving the performance of zsh git plugin
__git_files() { _files }

# tmuxinator
#source $HOME/.tmuxinator.zsh

# functions
## history
function peco-select-history() {
  local tac
  if which tac > /dev/null; then
    tac="tac"
  else
    tac="tail -r"
  fi
  BUFFER=$(\history -n 1 | \
    eval $tac | \
    peco --query "$LBUFFER")
  CURSOR=$#BUFFER
  zle clear-screen
}
zle -N peco-select-history
bindkey '^r' peco-select-history

# override theme
ZSH_THEME="takasing"
export ZSH_THEME

# tmux. must be last.
if [ $SHLVL = 1 ]; then
  tmux a || tmux -f $HOME/.tmux.conf
fi

