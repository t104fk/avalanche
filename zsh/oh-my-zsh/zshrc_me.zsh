export LANG=ja_JP.UTF-8
export EDITOR=vim
export VISUAL=vim

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init - zsh)"

# nodebrew
export PATH=$HOME/.nodebrew/current/bin:$PATH

# improving the performance of zsh git plugin
__git_files() { _files }

# tmuxinator
source $HOME/.bin/tmuxinator.zsh

# tmux. must be last.
if [ $SHLVL = 1 ]; then
  tmux a || tmux -f $HOME/.tmux.conf
fi

# The next line updates PATH for the Google Cloud SDK.
source '/usr/local/google-cloud-sdk/path.zsh.inc'
# The next line enables bash completion for gcloud.
source '/usr/local/google-cloud-sdk/completion.zsh.inc'

