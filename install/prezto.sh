echo "Switching to zsh and setting up zprezto..."

# fire up zsh

zsh

source "$HOME/.rvm/scripts/rvm"
source "$DOTFILES_DIR"/runcom/zprezto/.zprofile

git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

setopt EXTENDED_GLOB
for rcfile in "$DOTFILES_DIR"/runcom/zprezto/.* ; do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
  source "$rcfile"
done

# Set zsh as default shell
chsh -s /bin/zsh

echo "All done!"