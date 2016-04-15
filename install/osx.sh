echo "symlinking launchd-scripts"
ln -sfv "$DOTFILES_DIR/osx/launchd-scripts" $HOME
for file in "$DOTFILES_DIR/osx/launchd-scripts"/*.sh; do
  chmod +x "$DOTFILES_DIR/osx/launchd-scripts/${file##*/}"
done

for directory in LaunchAgents LaunchDaemons; do
  if [ ! -d "$HOME/Library/$directory" ]; then
    mkdir "$HOME/Library/$directory"
  fi
  for file in "$DOTFILES_DIR/osx/$directory"/*.plist; do
    ln -sfv "$DOTFILES_DIR/osx/$directory/${file##*/}" "$HOME/Library/$directory/"
    launchctl load "$HOME/Library/$directory/${file##*/}"
  done
done
