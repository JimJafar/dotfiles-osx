# Install Homebrew

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap homebrew/versions
brew tap homebrew/dupes
brew tap Goles/battery
brew update
brew upgrade

# Install packages

apps=(
    bash-completion2
    bats
    battery
    coreutils
    dockutil
    fasd
    git
    gnu-sed --with-default-names
    grep --with-default-names
    hub
    httpie
    jq
    peco
    psgrep
    python
    shellcheck
    ssh-copy-id
    svn
    tree
    vim
    wget
    zsh
    zsh-completions
    tmux
)

# Removed:
#ffmpeg
#gifsicle
#imagemagick
#mackup


brew install "${apps[@]}"

# Git comes with diff-highlight, but isn't in the PATH
ln -sf "$(brew --prefix)/share/git-core/contrib/diff-highlight/diff-highlight" /usr/local/bin/diff-highlight
