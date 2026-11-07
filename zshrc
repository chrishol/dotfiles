# Load the shell dotfiles, and then some:
# * `extra` can be used for other settings you don’t want to commit.

# Wherever this repo is cloned (the directory containing this file)
export DOTFILES="${0:A:h}"

# OS-specific configurations
if [[ "$OSTYPE" == "linux"* ]]; then
  for file in $DOTFILES/linux/{env,aliases,extra}; do
    [ -r "$file" ] && source "$file"
  done
  unset file
elif [[ "$OSTYPE" == "darwin"* ]]; then
  for file in $DOTFILES/macos/{env,config,aliases,extra}; do
    [ -r "$file" ] && source "$file"
  done
  unset file
fi

# Common aliases
source $DOTFILES/common/aliases

############################################################
## ZSH Config
############################################################

for file in $DOTFILES/zsh/{config,prompt}; do
  [ -r "$file" ] && source "$file"
done
unset file
