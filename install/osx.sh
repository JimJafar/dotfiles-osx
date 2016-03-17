# Send PATH to launchd so GUI apps like SourceTree get it
# This should work in Mavericks, Yosemite, El Capitan:
sudo launchctl config user path $PATH
