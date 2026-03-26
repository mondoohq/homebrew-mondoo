# Mondoo Homebrew Tap

Welcome to the Mondoo Homebrew Tap! Here you will find both a formula and cask for installation of cnspec. The formula will install the cnspec binary. The cask wraps our signed and notarized Apple PKG installing it to /Library/Mondoo.

To install Homebrew, visit https://brew.sh/.

Once Homebrew is installed, you can add the Mondoo Tap via the following command:

```
brew tap mondoohq/mondoo
```

To install cnspec:

```
brew install cnspec
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
