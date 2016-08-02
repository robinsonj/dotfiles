# PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
PATH=$PATH:$HOME/bin

autoload -U colors && colors

### Version control system config
autoload -Uz vcs_info

zstyle ':vcs_info:*' actionformats \
	'%F{5}(%f%s%F{5})%F{3}-%F{5}[%F{2}%b%F{3}|%F{1}%a%F{5}]%f '
# zstyle ':vcs_info:*' formats       \
#     '%F{5}(%f%s%F{5})%F{3}-%F{5}[%F{2}%b%F{5}]%f '

# Enable only the following VC systems.
zstyle ':vcs_info:*' enable p4 git svn

# Enable background checks for working copy changes in git.
zstyle ':vcs_info:*' check-for-changes true

# Git style prompt format
zstyle ':vcs_info:git*' formats "%{$fg[green]%}[%b]%{$reset_color%}[%{$fg[red]%}%m%u%c%{$reset_color%}]"

precmd() {
	vcs_info
}

### Initialize zsh tab-completion.
# completion
autoload -U compinit
compinit

### Functions
# 'g' shortcut
g() {
     if [[ $# > 0 ]]; then
          git $@
     else
          git jst
     fi
}

#
compdef g=git

# TaskWarrior Inbox
tinbox() {
  if hash task 2>/dev/null; then
    tinbox_count=$(task +inbox status:pending count)

    if [ "${tinbox_count}" -gt 0 ]
    then
      echo " [tin: ${tinbox_count}]"
    else
      echo ''
    fi
  fi
}

tickle () {
  deadline=$1
  shift
  tin +tickle wait:$deadline $@
}
alias tick=tickle
alias think='tickle +1d'

###

### Aliases
# Slightly more informative 'ls.'
if [ `uname` = "Darwin" ]; then
  alias ll='ls -la'
  # alias ls="ls -aF -G"
elif [ `uname` = "Linux" ]; then
  alias ll='ls --color --classify --all --human-readable -l'
fi

# neovim
alias vim=nvim

# tmux
# Alias tmux to honor XDG_CONFIG_HOME.
alias tmux="tmux -f $XDG_CONFIG_HOME/tmux/tmux.conf"

# Quick cleaning of screen.
alias cx=' clear'

# Shortcut for running default rspec tests with progress dots.
alias rfp='time rspec --format progress'

# Quick shortcut for running rspec with verbose documentation on all tests.
alias rfd='time rspec --format documentation'

# Reload ~/.zshrc in the current terminal tab.
alias rz='source ~/.zshrc'

# Edit ~/.zshrc
alias ez='vim ~/.zshrc'

# Edit ~/.gitconfig
alias eg='vim ~/.config/git/config'

# TaskWarrior
alias tin='task add +inbox'

# Neovim
alias vim='nvim'

### zshoptions
# Change directories if name of a dir is given as a command (with no 'cd').
setopt AUTO_CD

# Save the terminal command history to a file in the home directory.
SAVEHIST=20000
HISTSIZE=20000
HISTFILE=$HOME/.zsh_history

# Don't add commands to history if they are duplicates of the last command.
setopt HIST_IGNORE_DUPS

# Don't store commands in history if starting with a leading space.
setopt HIST_IGNORE_SPACE

# TODO: Document usage of these options.
setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY
setopt EXTENDED_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_VERIFY
setopt SHARE_HISTORY

# Enable prompt substitution.
setopt PROMPT_SUBST

### Prompt config. RPOMPT is right-justified on the prompt line.
PROMPT='%{$fg[magenta]%}%n%{$fg_bold[black]%}@%{$reset_color%}%{$fg[blue]%}%M%{$reset_color%} %~$(tinbox) ${vcs_info_msg_0_} |> '
RPROMPT='%* | %w'
