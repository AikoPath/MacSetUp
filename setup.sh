echo “Install brew”
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/aiko/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

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
echo "Installing Bitwarden"
brew install bitwarden

echo
echo “Installing Maccy clipboard manager”
brew install --cask maccy

echo
echo "Installing NordVPN"
brew install --cask nordvpn

echo
echo "Installing Oh My Zsh"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "fixing zsh locale issue"
echo "export LC_ALL=en_US.UTF-8                                                                [0:00:14]
export LANG=en_US.UTF-8" >> ~/.zshrc

echo
echo “TODO:”
echo “iterm: preferences: General -> Closing - uncheck Confirm Quit iTerm … ”
echo "iTerm: preferences: Appearance: - Dimming affects only text, not backgound."
echo "iTerm: preferences: Profiles: General: - Working directory - Reuse previous session's directory"
echo “Configure Maccy…”

