# https://github.com/herrbischoff/awesome-osx-command-line

defaults write com.apple.universalaccess reduceTransparency -bool true

sudo spctl --master-disable  # Allow running apps from Anywhere

sudo pmset -a hibernatemode 0  # Disable sleep image
sudo rm /var/vm/sleepimage

sudo cp noatime.plist /Library/LaunchDaemons/noatime.plist # Disable file access time (small performance improvement?)