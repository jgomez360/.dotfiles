#
### GLOBAL VARIABLES
#

# Load private config
# (local settings or computer specific config for example)
if [ -f $HOME/.config/fish/private.fish ]
    source $HOME/.config/fish/private.fish
end

### EXPORT ###
set fish_greeting                                 # Supresses fish's intro message
# set TERM "xterm-256color"                         # Sets the terminal type
set EDITOR "nvim"                                 # $EDITOR use Nvim in terminal

switch (uname)
case Linux
    set -x OSTYPE "Linux"
case Darwin
    set -x OSTYPE "MacOS"
case FreeBSD NetBSD DragonFly
    set -x OSTYPE "FreeBSD"
case '*'
    set -x OSTYPE "unknown"
end

### SET MANPAGER
### Uncomment only one of these!

### "nvim" as manpager
set -x MANPAGER "nvim +Man!"

### "less" as manpager
# set -x MANPAGER "less"

### ADDING TO THE PATH
# First line removes the path; second line sets it.  Without the first line, your path gets massive and fish becomes very slow.
# set -e fish_user_paths
# set -U fish_user_paths $HOME/.bin $HOME/.local/bin $HOME/.bifrost/bin $HOME/.cargo/bin $HOME/.foundry/bin $HOME/.huff/bin /opt/homebrew/bin /opt/homebrew/sbin /usr/local/bin $fish_user_paths
if not contains $HOME/.bin $PATH
    set -x PATH $HOME/.bin $PATH
end

if not contains $HOME/.local/bin $PATH
    set -x PATH $HOME/.local/bin $PATH
end

if not contains $HOME/.bifrost/bin $PATH
    set -x PATH $HOME/.bifrost/bin $PATH
end

if not contains $HOME/.cargo/bin $PATH
    set -x PATH $HOME/.cargo/bin $PATH
end

if not contains $HOME/.foundry/bin $PATH
    set -x PATH $HOME/.foundry/bin $PATH
end

if not contains $HOME/.huff/bin $PATH
    set -x PATH $HOME/.huff/bin $PATH
end

if not contains /opt/homebrew/bin $PATH
    set -x PATH /opt/homebrew/bin $PATH
end

if not contains /opt/homebrew/sbin $PATH
    set -x PATH /opt/homebrew/sbin $PATH
end

if not contains /usr/local/bin $PATH
    set -x PATH /usr/local/bin $PATH
end

if not contains /usr/local/sbin $PATH
    set -x PATH /usr/local/sbin $PATH
end

### SET EITHER DEFAULT EMACS MODE OR VI MODE ###
function fish_user_key_bindings
  # fish_default_key_bindings
  fish_vi_key_bindings
end
### END OF VI MODE ###

### AUTOCOMPLETE AND HIGHLIGHT COLORS ###
# set fish_color_normal brcyan
# set fish_color_autosuggestion '#7d7d7d'
# set fish_color_command brcyan
# set fish_color_error '#ff6c6b'
# set fish_color_param brcyan

### FUNCTIONS ###
source ~/.config/fish/functions/utils.fish

### ALIASES ###
# navigation
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

# tools
alias cat='bat'
alias df='duf'
alias m='neomutt'
alias ta='tmux attach'
alias vim='nvim'

# Neomutt

# Useful sites
alias l='curl ipinfo.io'
alias w='curl wttr.in'

# Changing "ls" to "eza"
alias la='eza -a -l -g --icons --git'
alias ld='eza -l -g --icons --git --sort=modified --reverse'
alias ll='eza -l -g --icons --git'
alias ls='eza -g --icons --git'

# Colorize grep output (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# adding flags
alias free='free -m'                      # show sizes in MB

# ps
alias psa="ps auxf"
alias psgrep="ps aux | grep -v grep | grep -i -e VSZ -e"
alias psmem='ps auxf | sort -nr -k 4'
alias pscpu='ps auxf | sort -nr -k 3'

# git
alias ga='git add'
alias gb='git branch'
alias gco='git checkout'
alias gd='git diff'
alias gs='git status'
alias clone='git clone'
alias commit='git commit -m'
alias fetch='git fetch'
alias graph='git log --all --decorate --oneline --graph'
alias pull='git pull origin'
alias push='git push origin'

# Set theme
fish_config theme choose "Catppuccin Mocha"

### SETTING THE STARSHIP PROMPT ###
starship init fish | source
