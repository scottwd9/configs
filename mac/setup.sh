# https://github.com/herrbischoff/awesome-osx-command-line

defaults write com.apple.universalaccess reduceTransparency -bool true

defaults write NSGlobalDomain AppleFontSmoothing -int 1 #mojave LCD font aliasing

sudo spctl --master-disable  # Allow running apps from Anywhere
sudo pmset -a sms 0 # Disable sudden motion sensor

sudo pmset -a hibernatemode 0  # Disable sleep image
sudo rm /var/vm/sleepimage

sudo cp noatime.plist /Library/LaunchDaemons/noatime.plist # Disable file access time (small performance improvement?)

sudo cp limit.maxfiles.plist /Library/LaunchDaemons/limit.maxfiles.plist
sudo chown root:wheel /Library/LaunchDaemons/limit.maxfiles.plist

sudo cp limit.maxproc.plist /Library/LaunchDaemons/limit.maxproc.plist
sudo chown root:wheel /Library/LaunchDaemons/limit.maxproc.plist
