## FileSearch
function f() { find . -iname "*$1*" ${@:2} }
function r() { grep "$1" ${@:2} -R . }

## mkdir and cd
function mkcd() { mkdir -p "$@" && cd "$_"; }

# Nuon

alias nuon="cd Documents/IDEA/my-nuon-frontend"
alias testsauce='cd Documents/IDEA/my-nuon-frontend/ && gulp test-e2e --baseUrl https://mijnnuon2.azurewebsites.net --sauce'
alias safaritest="cd Documents/IDEA/my-nuon-frontend/ && ./node_modules/.bin/webdriver-manager start & BROWSER=safari gulp test-e2e"

alias gbotstatus="heroku ps --app gbot-nuon"
alias gbotstop="heroku ps:stop web.1 --app gbot-nuon"
alias gbotrestart="heroku ps:restart --app gbot-nuon"
