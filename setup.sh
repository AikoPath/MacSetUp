echo “Install brew”
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo
echo “Installing iTerm 2”
brew install --cask iterm2

echo “Installing Stats”
brew install --cask stats

echo
echo “Installing Brave”
brew install --cask brave-browser

echo
echo “Installing 1Password”
brew install --cask 1password

echo
echo “Installing Maccy clipboard manager”
brew install --cask maccy

echo
echo "Installing Oh My Zsh"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


echo
echo “TODO:”
echo “Iterm2: preferences: General -> Closing -> uncheck ‘Confirm Quit iTerm …’ ”
echo “Configure Maccy…”

