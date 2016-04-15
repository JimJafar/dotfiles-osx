#!/usr/bin/env bash

# Stop the Nuon HipChat bots
heroku stop --app mnrbot web.1
heroku stop --app gbot-nuon web.1
