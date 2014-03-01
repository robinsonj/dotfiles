
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

### Prompt config. RPOMPT is right-justified on the prompt line.
PROMPT='%1~ $ '
RPROMPT='%*'

### Aliases

### zshoptions
# Change directories if name of a dir is given as a command (with no 'cd').
setopt AUTO_CD

# Don't add commands do history if they are duplicates of the last command in it.
setopt HIST_IGNORE_DUPS

# Don't store commands in history if starting with a leading space.
setopt HIST_IGNORE_SPACE
