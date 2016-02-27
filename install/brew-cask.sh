# Install Caskroom

brew tap caskroom/cask
brew install brew-cask
brew tap caskroom/versions

# Install packages

apps=(
    1password
    alfred
    atom
    dash
    dropbox
    iterm2
    firefox
    flux
    google-chrome
    hammerspoon
    kaleidoscope
    sourcetree
    versions
    cornerstone
    spotify
    vlc
    intellij-idea
    delibar
    evernote
    little-snitch
    skitch
    steam
    renamer
    cleanmymac
    android-file-transfer
    brackets
    chitchat
    charles
)

# Removed
#macdown
#opera
#google-drive
#sublime-text3
#virtualbox
#firefox-nightly
#google-chrome-canary
#glimmerblocker

brew cask install "${apps[@]}"

# Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package

# Link Hammerspoon config
[ -d ~/.hammerspoon ] || ln -sfv "$DOTFILES_DIR/etc/hammerspoon/" ~/.hammerspoon

# Finish Little Snitch installation
open /opt/homebrew-cask/Caskroom/little-snitch/3.6.3/Little\ Snitch\ Installer.app