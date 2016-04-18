echo "$(tput setaf 2)Starting OSX specific install$(tput sgr 0)"

echo "Linking launchd-scripts"
ln -sfv "$DOTFILES_DIR/osx/launchd-scripts" $HOME
for file in "$DOTFILES_DIR/osx/launchd-scripts"/*.sh; do
  chmod +x "$DOTFILES_DIR/osx/launchd-scripts/${file##*/}"
done

echo "$(tput setaf 2)Linking LaunchAgents and LaunchDaemons$(tput sgr 0)"
for directory in LaunchAgents LaunchDaemons; do
  if [ ! -d "$HOME/Library/$directory" ]; then
    mkdir "$HOME/Library/$directory"
  fi
  for file in "$DOTFILES_DIR/osx/$directory"/*.plist; do
    ln -sfv "$DOTFILES_DIR/osx/$directory/${file##*/}" "$HOME/Library/$directory/"
    launchctl load "$DOTFILES_DIR/osx/$directory/${file##*/}"
  done
done

echo "$(tput setaf 2)Linking Preferences$(tput sgr 0)"
for directory in "$DOTFILES_DIR/osx/Preferences"/*; do
  if [ ! -d "$HOME/Library/Preferences/${directory##*/}" ]; then
    mkdir "$HOME/Library/Preferences/${directory##*/}"
  fi
  for file in "$directory"/*; do
    ln -sfv "$directory/${file##*/}" "$HOME/Library/Preferences/${directory##*/}/"
  done
done

echo "$(tput setaf 2)Finished OSX specific install$(tput sgr 0)"
