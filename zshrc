# Load the shell dotfiles, and then some:
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/src/dotfiles/bash/{env,config,aliases,extra}; do
  [ -r "$file" ] && source "$file"
done
unset file

############################################################
## ZSH Config
############################################################

for file in ~/src/dotfiles/zsh/{config,prompt}; do
  [ -r "$file" ] && source "$file"
done
unset file

## rbenv
##########
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
