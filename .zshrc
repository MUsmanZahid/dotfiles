# Prompt
NL=$'\n'
PROMPT="%F{cyan}%n%f@%F{green}%m%f %T %F{yellow}%?%f %F{magenta}%U%B%~%b%u%f
%# "

bindkey -e

export PATH="$PATH:$HOME/.cargo/bin:${HOME}/.local/bin"

# aliases
alias e1="eza -1"
alias ez="eza"
alias ea="eza -a"
alias el="eza -bgl"
alias ela="eza -bla"
alias ls="ls --color=auto"

# ZSH crap
## Auto-complete config
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

## Plugins
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# My crap
# Mise
eval "$(mise activate zsh)"

# Android developement on Linux
if [ "$(uname --kernel-name)" = "Linux" ]; then
    # Android Development
    export ANDROID_HOME="$HOME/Android/Sdk"
    export PATH="$PATH:$ANDROID_HOME/emulator:$ANDROID_HOME/platform-tools"
    export JAVA_HOME="/usr/lib/jvm/java"
fi

