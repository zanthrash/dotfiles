if test ! "$(uname)" = "Darwin"
  then
  exit 0
fi

# The Brewfile handles Homebrew-based app and library installs, but there may
# still be updates and installables in the Mac App Store. There's a nifty
# command line interface to it that we can use to just install everything, so
# yeah, let's do that.

echo "› softwareupdate -i -a"
softwareupdate -i -a

echo "› updating brew and brew bundle"
# Update Homebrew recipes

# Install all our dependencies with bundle (See Brewfile)
brew tap homebrew/bundle
brew bundle

### Reset installed Quicklook plugins
xattr -d -r com.apple.quarantine ~/Library/QuickLook

qlmanage -r
qlmanage -r cache

killall "Finder"