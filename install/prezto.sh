echo "Setting up zsh and zprezto..."

git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

# link to prezto dotfiles

ln -sfv "$DOTFILES_DIR/runcom/zprezto/.zlogin" ~
ln -sfv "$DOTFILES_DIR/runcom/zprezto/.zlogout" ~
ln -sfv "$DOTFILES_DIR/runcom/zprezto/.zpreztorc" ~
ln -sfv "$DOTFILES_DIR/runcom/zprezto/.zprofile" ~
ln -sfv "$DOTFILES_DIR/runcom/zprezto/.zshenv" ~
ln -sfv "$DOTFILES_DIR/runcom/zprezto/.zshrc" ~

# Set zsh as default shell

chsh -s /bin/zsh

echo "All done! Please run 'source ~/.zprofile' or just fire up a new terminal!"
echo "Switching to zsh now..."

zsh