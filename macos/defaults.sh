#!/usr/bin/env bash
# =============================================================================
# defaults.sh — macOS System Preferences via CLI
# =============================================================================

echo "⚙️  Applying macOS defaults..."

# --- Dock ---
defaults write com.apple.dock autohide -bool true               # auto hide dock
defaults write com.apple.dock autohide-delay -float 0           # tanpa delay
defaults write com.apple.dock show-recents -bool false          # hapus recent apps
defaults write com.apple.dock tilesize -int 48                  # ukuran icon

# --- Finder ---
defaults write com.apple.finder ShowPathbar -bool true          # tampilkan path bar
defaults write com.apple.finder ShowStatusBar -bool true        # tampilkan status bar
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"  # list view default
defaults write com.apple.finder AppleShowAllFiles -bool true    # tampilkan hidden files
defaults write NSGlobalDomain AppleShowAllExtensions -bool true # tampilkan ekstensi file
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# --- Keyboard ---
defaults write NSGlobalDomain KeyRepeat -int 2                  # fast key repeat
defaults write NSGlobalDomain InitialKeyRepeat -int 15          # delay sebelum repeat
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false  # disable accent menu

# --- Trackpad ---
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true  # tap to click
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# --- Screenshots ---
defaults write com.apple.screencapture location "$HOME/Desktop"
defaults write com.apple.screencapture type -string "png"
defaults write com.apple.screencapture disable-shadow -bool true  # hapus shadow

# --- Activity Monitor ---
defaults write com.apple.ActivityMonitor OpenMainWindow -bool true
defaults write com.apple.ActivityMonitor ShowCategory -int 0    # all processes

# --- Misc ---
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false   # no smart quotes
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false    # no smart dashes
defaults write com.apple.TimeMachine doNotOfferNewDisksForBackup -bool true     # no TM popup

# Restart affected apps
for app in "Dock" "Finder" "SystemUIServer"; do
  killall "$app" &>/dev/null || true
done

echo "✓ macOS defaults applied! Beberapa perubahan butuh logout/restart."

