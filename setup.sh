echo "Install brew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/aiko/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

echo
echo "Installing iTerm 2"
brew install --cask iterm2

echo "Installing Stats"
brew install --cask stats

echo
echo "Installing Brave"
brew install --cask brave-browser

echo
echo "Installing Bitwarden"
brew install --cask bitwarden

echo
echo "Installing Maccy clipboard manager"
brew install --cask maccy

echo
echo "Installing Oh My Zsh"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "fixing zsh locale issue"
echo "export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8" >> ~/.zshrc

echo
echo "Configuring iTerm 2"
defaults write com.googlecode.iterm2 PromptOnQuit -bool false
defaults write com.googlecode.iterm2 DimOnlyText -bool true

iterm_plist="$HOME/Library/Preferences/com.googlecode.iterm2.plist"
if [ -f "$iterm_plist" ] && /usr/libexec/PlistBuddy -c "Print :'New Bookmarks':0:'Custom Directory'" "$iterm_plist" >/dev/null 2>&1; then
  /usr/libexec/PlistBuddy -c "Set :'New Bookmarks':0:'Custom Directory' Recycle" "$iterm_plist"
else
  echo "  (skipped 'reuse previous directory' — launch iTerm 2 once, then re-run this script)"
fi

echo
echo "TODO:"
echo "Configure Maccy..."

