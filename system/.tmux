MEH=$(ps -p $$)
echo "meh: $MEH"
CURRENT_SHELL=$(pstree  -p $$  | tr ' ()' '\012\012\012' | grep -i "sh$" | grep -v "$0" | tail -1)
echo "current_shell: $CURRENT_SHELL"
if [[ $CURRENT_SHELL == *"zsh"* ]]; then
  echo "loading tmuxinator ZSH connector"
  source "$DOTFILES_DIR"/tmux/.tmuxinator.zsh
else
  echo "loading tmuxinator BASH connector"
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

unset CURRENT_SHELL