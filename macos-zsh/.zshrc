# Set locale
export LC_ALL="en_US.UTF-8"

# Force English output for all tools
export LANG='en_US'

# Disable history for commands with space in front
setopt HIST_IGNORE_SPACE

# Authenticated restart shortcut
alias authrestart='sudo fdesetup authrestart'
alias authrestartnext='sudo fdesetup authrestart -delayminutes -1'

# Set editor
export EDITOR='nvim'

# Fix GPG
export GPG_TTY=$(tty)

# Some applications break GPG's pinentry. Use this command to temporarily
# authenticate against GPG-agent
alias gpgpin='echo hello | gpg --clearsign'

# Function for "incognito" mode
function incognito() {
    unset HISTFILE
    export PROMPT="[I] $PROMPT"
}

# Keyboard shortcuts like bash
bindkey -e
export PATH="/usr/local/sbin:$PATH"

# yt-dlp full
alias yt-dlp-full="yt-dlp --embed-metadata --embed-subs --embed-thumbnail --sub-langs all --write-subs"

# ZSH tab completions
fpath+=~/.zfunc

# esp-rs
alias get_esprs='. $HOME/export-esp.sh'
export PATH="/opt/homebrew/bin:$PATH"
