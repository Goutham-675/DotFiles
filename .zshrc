#######################################################
# HISTORY
#######################################################
HISTSIZE=10000
HISTFILE=~/.zsh_history
SAVEHIST=10000
setopt appendhistory sharehistory hist_ignore_all_dups hist_ignore_space

#######################################################
# PLUGINS (zinit)
#######################################################
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
if [ ! -d "$ZINIT_HOME" ]; then
   mkdir -p "$(dirname $ZINIT_HOME)"
   git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi
source "${ZINIT_HOME}/zinit.zsh"

zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-syntax-highlighting

#######################################################
# COMPLETION
#######################################################
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' menu select

#######################################################
# KEYBINDINGS
#######################################################
bindkey -v
bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward
bindkey '^f' autosuggest-accept

#######################################################
# ENV
#######################################################
export EDITOR=nvim
export SUDO_EDITOR=nvim

#######################################################
# ALIASES
#######################################################
alias ls='ls --color=auto'
alias ll='ls -lah'
alias cls='clear'
alias conf='cd ~/.config'

#######################################################
# PROMPT
#######################################################
eval "$(starship init zsh)"
