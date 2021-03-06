# https://github.com/herrbischoff/awesome-osx-command-line

# Disable sleep for 1 hour:
# $ caffeinate -u -t 3600

# xcode-select --install

defaults write com.apple.universalaccess reduceTransparency -bool true

defaults write NSGlobalDomain AppleFontSmoothing -int 1 #mojave LCD font aliasing

sudo spctl --master-disable  # Allow running apps from Anywhere
sudo pmset -a sms 0 # Disable sudden motion sensor

sudo pmset -a hibernatemode 0  # Disable sleep image
# sudo rm /var/vm/sleepimage

sudo cp noatime.plist /Library/LaunchDaemons/noatime.plist # Disable file access time (small performance improvement?)
sudo chown root:wheel /Library/LaunchDaemons/noatime.plist

sudo cp limit.maxfiles.plist /Library/LaunchDaemons/limit.maxfiles.plist
sudo chown root:wheel /Library/LaunchDaemons/limit.maxfiles.plist

sudo cp limit.maxproc.plist /Library/LaunchDaemons/limit.maxproc.plist
sudo chown root:wheel /Library/LaunchDaemons/limit.maxproc.plist

# SFMono Font
cp -v /Applications/Utilities/Terminal.app/Contents/Resources/Fonts/SFMono-* ~/Library/Fonts

# Safari Developer Menu
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true && \
defaults write com.apple.Safari IncludeDevelopMenu -bool true && \
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true && \
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true && \
defaults write -g WebKitDeveloperExtras -bool true

# Dock
defaults write com.apple.dock autohide -bool true && \
defaults write com.apple.dock autohide-time-modifier -float 0.25 && \
defaults write com.apple.dock autohide-delay -float 0.25 && \
killall Dock

# Finder
defaults write com.apple.finder ShowStatusBar -bool true
defaults write -g NSTableViewDefaultSizeMode -int 1

defaults write -g KeyRepeat -int 2
defaults write -g ApplePressAndHoldEnabled -bool false
