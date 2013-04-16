# Load the shell dotfiles, and then some:
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/bin/dotfiles/bash/{env,config,aliases,extra}; do
  [ -r "$file" ] && source "$file"
done
unset file

############################################################
## ZSH Config
############################################################

for file in ~/bin/dotfiles/zsh/{config,prompt}; do
  [ -r "$file" ] && source "$file"
done
unset file