echo "symlinking launchd-scripts"
ln -sfv "$DOTFILES_DIR/osx/launchd-scripts" $HOME

for directory in LaunchAgents LaunchDaemons; do
  if [ -d "$HOME/Library/$directory" ]; then
    echo "found existing $directory"
    for file in "$DOTFILES_DIR/osx/$directory"/*.plist; do
      echo "symlinking $file"
      ln -sfv "$DOTFILES_DIR/osx/$directory/${file##*/}" "$HOME/Library/$directory/"
      launchctl load "$DOTFILES_DIR/osx/$directory/${file##*/}"
    done
  else
    echo "symlinking $directory"
    ln -sfv "$DOTFILES_DIR/osx/$directory" "$HOME/Library/"
    for file in "$DOTFILES_DIR/osx/$directory"/*.plist; do
      launchctl load "$DOTFILES_DIR/osx/$directory/${file##*/}"
    done
  fi
done
