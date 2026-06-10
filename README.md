# Mondoo Homebrew Tap

Welcome to the Mondoo Homebrew Tap!  Here you will find both a formula and cask for installation of cnspec.  The formula installs the cnspec binary (which also provides cnquery via a symlink).  The cask wraps our signed and notorized Apple PKG installing it to /Library/Mondoo.

To install Homebrew, visit https://brew.sh/.

Once Homebrew is installed, you can install cnspec using its fully qualified formula name:

```
brew install mondoohq/mondoo/cnspec
```

To update cnspec:

```
brew update && brew upgrade cnspec
```

At any time you can remove the installation and the tap via:

```
brew uninstall cnspec
brew untap mondoohq/mondoo
```

For more information, visit https://mondoo.com

# Updating the Tap

To freshen the Cask and Formula to the latest release of the Mondoo client, simply run ```make update```, and commit the result:

```
make update
```

### Join the community!

Join the [Mondoo Community GitHub Discussions](https://github.com/orgs/mondoohq/discussions) to collaborate and discuss.
