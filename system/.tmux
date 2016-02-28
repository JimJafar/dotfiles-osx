if [[ $0 == *"-zsh"* ]]; then
  source "$DOTFILES_DIR"/tmux/.tmuxinator.zsh
else
  source "$DOTFILES_DIR"/tmux/.tmuxinator.bash
fi

# install tmux plugin manager

if [ ! -d "$HOME/.tmux/plugins/tpm" ]; then
    git clone https://github.com/tmux-plugins/tpm "$HOME/.tmux/plugins/tpm"
fi

# symlink config
if [ ! -e "$HOME"/.tmux.conf ] && [ ! -L "$HOME"/.tmux.conf ]; then
  ln -s "$DOTFILES_DIR"/tmux/.tmux.conf "$HOME"/.tmux.conf
fi