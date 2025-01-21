# Load the shell dotfiles, and then some:
# * `extra` can be used for other settings you don’t want to commit.

# OS-specific configurations
if [[ "$OSTYPE" == "linux"* ]]; then
  for file in $HOME/src/dotfiles/linux/{env,aliases}; do
    [ -r "$file" ] && source "$file"
  done
  unset file
elif [[ "$OSTYPE" == "darwin"* ]]; then
  for file in $HOME/src/dotfiles/macos/{env,config,aliases,extra}; do
    [ -r "$file" ] && source "$file"
  done
  unset file
fi

# Common aliases
for file in $HOME/src/dotfiles/common/{aliases}; do
  [ -r "$file" ] && source "$file"
done
unset file

############################################################
## ZSH Config
############################################################

for file in $HOME/src/dotfiles/zsh/{config,prompt}; do
  [ -r "$file" ] && source "$file"
done
unset file
