# Load the shell dotfiles, and then some:
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/src/dotfiles/bash/{env,config,aliases,extra}; do
  [ -r "$file" ] && source "$file"
done
unset file

############################################################
## Boxen
############################################################

source "/opt/boxen/env.sh"
