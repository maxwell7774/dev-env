#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

export PATH="$PATH:$HOME/.local/scripts"

bind '"\C-f": "tmux-sessionizer\n"'

alias vim='nvim'
