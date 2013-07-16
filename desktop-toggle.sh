VAL=$(defaults read com.apple.finder CreateDesktop);
if [ $VAL == 0 ]; then
echo "Your desktop has been restored.";
defaults write com.apple.finder CreateDesktop -bool true
killall Finder
else
echo "Now hiding your desktop.";
defaults write com.apple.finder CreateDesktop -bool false
killall Finder
fi