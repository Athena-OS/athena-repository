# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '$HOME/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
source ~/.bash_aliases
PROMPT="%F{46}┌──[HQ🚀%F{201}$(ip -4 addr | grep -v '127.0.0.1' | grep -v 'secondary' | grep -Po "inet \K[\d.]+" | sed -z "s/\n/|/g;s/|$/\n/")⚔️%n%F{46}]"$'\n'"└──╼[👾]%F{44}%~ $%f "
precmd() { eval "$PROMPT_COMMAND" }
export PROMPT_COMMAND='source ~/.zshrc'
