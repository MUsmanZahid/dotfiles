# Prompt
NL=$'\n'
PROMPT="%F{cyan}%n%f@%F{green}%m%f %T %F{yellow}%?%f %F{magenta}%U%B%~%b%u%f
%# "

BINARIES="/opt/android/studio/bin:/opt/flutter/bin:/opt/aws/bin"
export PATH="$PATH:${HOME}/.local/bin:$HOME/bin:${BINARIES}:$HOME/.cargo/bin"
export BAT_THEME=gruvbox-light

# aliases
alias e1="eza -1"
alias ex="eza"
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
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Aliases
alias ls="ls --color=auto"
alias workvpn="sudo openvpn /etc/openvpn/ALC-Optus-LifeTradingVPN.ovpn"
