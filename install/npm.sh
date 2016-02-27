brew install nvm

nvm install 4.2
nvm use 4.2
nvm alias default 4.2

# Globally install with npm

packages=(
    bower
    grunt
    gulp
    yo
)

# Removed
#http-server
#nodemon
#release-it
#spot
#svgo
#tldr
#underscore
#vtop

npm install -g "${packages[@]}"
