# Load the shell dotfiles, and then some:
# * `extra` can be used for other settings you don’t want to commit.
for file in ~/src/dotfiles/common/{aliases}; do
  [ -r "$file" ] && source "$file"
done
unset file

# OS-specific configurations
if [[ "$OSTYPE" == "linux"* ]]; then
  for file in ~/src/dotfiles/linux/{aliases,env}; do
    [ -r "$file" ] && source "$file"
  done
  unset file
elif [[ "$OSTYPE" == "darwin"* ]]; then
  for file in ~/src/dotfiles/macos/{env,config,aliases,extra}; do
    [ -r "$file" ] && source "$file"
  done
  unset file
fi

############################################################
## ZSH Config
############################################################

for file in ~/src/dotfiles/zsh/{config,prompt}; do
  [ -r "$file" ] && source "$file"
done
unset file
