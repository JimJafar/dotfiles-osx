source "$DOTFILES_DIR"/tmux/.tmuxinator.zsh
# install tmux plugin manager
if [ ! -d "$HOME/.tmux/plugins/tpm" ]; then
    git clone https://github.com/tmux-plugins/tpm "$HOME/.tmux/plugins/tpm"
fi