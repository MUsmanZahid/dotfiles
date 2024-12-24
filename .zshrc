# Prompt
NL=$'\n'
PROMPT="%F{cyan}%n%f@%F{green}%m%f %T %F{yellow}%?%f %F{magenta}%U%B%~%b%u%f
%# "

bindkey -e

BINARIES="/opt/android/studio/bin:/opt/flutter/bin:/opt/aws/bin"
export PATH="$PATH:/opt/jetbrains/scripts:${HOME}/.local/bin:$HOME/bin:${BINARIES}:$HOME/.cargo/bin"

# aliases
alias e1="eza -1"
alias ez="eza"
alias ea="eza -a"
alias el="eza -bgl"
alias ela="eza -bla"

# Auto-complete config
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

# Plugins
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Aliases
alias ls="ls --color=auto"
alias workvpn="sudo openvpn /etc/openvpn/ALC-Optus-LifeTradingVPN.ovpn"
