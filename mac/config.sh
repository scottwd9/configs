# https://github.com/herrbischoff/awesome-osx-command-line

defaults write com.apple.Dock autohide-time-modifier -float 0.0
defaults write com.apple.Dock expose-animation-duration -float 0.0
defaults write com.apple.Dock autohide-delay -float 0.0
defaults write com.apple.Dock tilesize -int 16

killall Dock

defaults write com.apple.universalaccess reduceTransparency -bool true
sudo spctl --master-disable  # Allow running apps from Anywhere