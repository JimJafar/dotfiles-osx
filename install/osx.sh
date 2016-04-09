echo "symlinking launchd-scripts"
ln -sfv "$DOTFILES_DIR/osx/launchd-scripts" $HOME

for directory in LaunchAgents LaunchDaemons; do
  if [ -d "$HOME/Library/$directory" ]; then
    echo "found existing $directory"
    for filename in "$DOTFILES_DIR/osx/$directory"/*.plist; do
      echo "symlinking $filename"
      ln -sfv "$DOTFILES_DIR/osx/$directory/$filename" "$HOME/Library/$directory/"
    done
  else
    echo "symlinking $directory"
    ln -sfv "$DOTFILES_DIR/osx/$directory" "$HOME/Library/"
  fi
done
