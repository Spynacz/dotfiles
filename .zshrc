### ZSH HOME
export ZSH=$HOME/.zsh

### ---- history config -------------------------------------
HISTFILE=$ZSH/.zsh_history

# How many commands zsh will load to memory.
HISTSIZE=10000

# How many commands history will save on file.
SAVEHIST=10000

# History won't save duplicates.
setopt HIST_IGNORE_ALL_DUPS

# History won't show duplicates on search.
setopt HIST_FIND_NO_DUPS
### --------------------------------------------------------

setopt AUTO_PUSHD
setopt PUSHD_IGNORE_DUPS
setopt PUSHD_SILENT

autoload -U colors && colors

# Completion
autoload -U compinit && compinit
_comp_options+=(globdots)


### PLUGINS
source $ZSH/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh

source $ZSH/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

fpath=($ZSH/plugins/zsh-completions/src $fpath)

source $ZSH/plugins/zsh-git-prompt/zshrc.sh

source $ZSH/appearance.zsh
source $ZSH/completion.zsh

source $ZSH/timestamp.sh

source $ZSH/plugins/colored-man-pages.zsh
source $ZSH/plugins/command-not-found.zsh
source $ZSH/plugins/you-should-use.zsh

source $HOME/.aliases

# History completion
source $ZSH/plugins/zsh-history-substring-search.zsh
HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_FOUND=none
HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_NOT_FOUND=none

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down


### PROMPT
ZSH_THEME_GIT_PROMPT_PREFIX="("
ZSH_THEME_GIT_PROMPT_SUFFIX=" "
ZSH_THEME_GIT_PROMPT_SEPARATOR=")"

if [[ -n $SSH_CONNECTION ]]; then
    PROMPT='%{$fg[yellow]%}%c ➤ %{$reset_color%}'
    PROMPT+=' %{$fg[yellow]%}%~%{$reset_color%} $(git_super_status)'
else
    PROMPT='%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )'
    PROMPT+=' %{$fg[cyan]%}%~%{$reset_color%} $(git_super_status)'
fi
