# ----------------------
# General Settings
# ----------------------
export TERM="xterm-kitty"           # Terminal setting for Kitty
export LANG="en_US.UTF-8"           # Default language
export EDITOR="nvim"                # Set Neovim as the default editor
export PATH="/usr/local/bin:$PATH"  # Add Homebrew binaries to PATH
export PRETTIER_CONFIG="~/.config/prettier/.prettierrc"

export MallocNanoZone='0'

alias ls='ls -G'
# ----------------------
# Plugin Directory
# ----------------------
export ZSH_PLUGINS_DIR=~/zsh-plugins

# ----------------------
# Load Plugins
# ----------------------
# Syntax Highlighting
source $ZSH_PLUGINS_DIR/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Autosuggestions
source $ZSH_PLUGINS_DIR/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=8'  # Suggestion color
bindkey '^ ' autosuggest-accept         # Ctrl+Space to accept suggestions

# History Substring Search
source $ZSH_PLUGINS_DIR/zsh-history-substring-search/zsh-history-substring-search.zsh

# Git Prompt Integration
source $ZSH_PLUGINS_DIR/zsh-git-prompt/zshrc.sh
zstyle ':vcs_info:git:*' formats '%F{yellow}[%b]%f' # Show Git branch

# ----------------------
# Prompt Configuration
# ----------------------
autoload -Uz vcs_info               # Enable Git info in the prompt
precmd () { vcs_info }              # Update Git info before each command
setopt prompt_subst                 # Allow prompt substitutions

PROMPT='%F{cyan}%n%f@%F{green}%m%f %F{yellow}%1~%f ${vcs_info_msg_0_} %# '

# ----------------------
# History Configuration
# ----------------------
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history
setopt HIST_IGNORE_ALL_DUPS         # Ignore duplicate history entries
setopt HIST_FIND_NO_DUPS            # Avoid duplicates when searching

# ----------------------
# Command-Line Tools
# ----------------------
# fzf-tab Configuration
zstyle ':completion:*' menu select      # Enable fzf-tab completion menu

# ----------------------
# Environment Variables
# ----------------------
export JUXTA="$HOME/coding/Juxta"
export CF="$HOME/coding/codeforces"
export SCHOOL="$HOME/Northwestern/24-25/25Spring"
export USACO="$HOME/coding/USACO"
export RLIU="$HOME/coding/rliu.xyz"

# ----------------------
# Functions
# ----------------------
export ZSH_FUNCTIONS_DIR=~/zsh-functions
for func in $ZSH_FUNCTIONS_DIR/*.zsh; do
  source $func
done

# ----------------------
# Aliases
# ----------------------
alias ll='ls -lh'                   # List files in human-readable format
alias la='ls -lha'                  # Include hidden files
alias g='git'                       # Shorter git command
alias e=$EDITOR                      # Open Neovim

# ----------------------
# vi-mode Configuration
# ----------------------
bindkey -v                          # Enable vi mode keybindings
export KEYTIMEOUT=1                 # Faster switching between modes

export DISPLAY=:0

alias k='kitty @ launch && kitty @ launch && kitty @ launch'

# Pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"

# Created by `pipx` on 2025-01-21 22:05:05
export PATH="$PATH:/Users/ruyilan/.local/bin"
alias dotfiles='git --git-dir=/Users/ruyilan/.dotfiles --work-tree=/Users/ruyilan'
