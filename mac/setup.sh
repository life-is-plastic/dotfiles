# Delete an override with:
#   defaults delete <section> <setting>
# For example:
#   defaults delete com.apple.dock autohide-time-modifier

# Dock
defaults write com.apple.dock autohide-time-modifier -float 0.167
defaults write com.apple.dock autohide-delay -float 0
killall Dock

# Finder
defaults write com.apple.finder AppleShowAllFiles -boolean true
killall Finder
