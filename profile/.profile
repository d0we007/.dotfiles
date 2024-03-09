# set custom things
export XDG_DATA_HOME=${XDG_DATA_HOME:="$HOME/.local/share"}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:="$HOME/.cache"}
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:="$HOME/.config"}
export HISTFILE="$XDG_DATA_HOME"/bash/history

export EDITOR="nvim"
export READER="zathura"
export VISUAL="nvim"
export TERMINAL="alacritty"
export BROWSER="firefox"
export COLORTERM="truecolor"

# Source Bashrc
[[ -f ~/.bashrc ]] && . ~/.bashrc
