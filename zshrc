
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# linuxbrew loading
export PATH="$HOME/.linuxbrew/bin:$PATH"
export LD_LIBRARY_PATH="$HOME/.linuxbrew/lib:$LD_LIBRARY_PATH"


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
zstyle ':vcs_info:git*' formats "%{$fg[green]%}[%b]%{$reset_color%} %{$fg[red]%}%m%u%c%{$reset_color%}"

precmd() {
	vcs_info
}

### Completion loading and git 'g' function from thoughtbot
# completion
autoload -U compinit
compinit

### Functions
# 'g' shortcut
g() {
     if [[ $# > 0 ]]; then
          git $@
     else
          git st
     fi
}

#
compdef g=git

###

### Aliases
# Slightly more informative 'ls.'
if [ `uname` = "Darwin" ]; then
    alias ls=" echo -e '\033[1;34m' `pwd`; echo -en '\033[0m \n'; ls -aF -G"
elif [ `uname` = "Linux" ]; then
    alias ls=" echo -e '\033[1;34m' `pwd`; echo -en '\033[0m \n'; ls -aF --color"
fi

# Quick cleaning of screen.
alias cx=' clear'

# Shortcut for running default rspec tests with progress dots.
alias rfp='rspec --format progress'

# Quick shortcut for running rspec with verbose documentation on all tests.
alias rfd='rspec --format documentation'

# Reload ~/.zshrc in the current terminal tab.
alias rz='source ~/.zshrc'

# Edit ~/.zshrc
alias ez='vim ~/.zshrc'

# Edit ~/.gitconfig
alias eg='vim ~/.gitconfig'

### zshoptions
# Change directories if name of a dir is given as a command (with no 'cd').
setopt AUTO_CD

# Don't add commands do history if they are duplicates of the last command in it.
setopt HIST_IGNORE_DUPS

# Don't store commands in history if starting with a leading space.
setopt HIST_IGNORE_SPACE

# Enable prompt substitution.
setopt PROMPT_SUBST

### Prompt config. RPOMPT is right-justified on the prompt line.
PROMPT='%1~ ${vcs_info_msg_0_}$ '
RPROMPT='%*'
