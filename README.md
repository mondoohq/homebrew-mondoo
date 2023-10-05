# Mondoo Homebrew Tap

Welcome to the Mondoo Homebrew Tap!  Here you will find both a formula and cask for installation of cnquery and cnspec.  The formulas will install the cnquery and/or cnspec binaries..  The cask wraps our signed and notorized Apple PKG installing it to /Library/Mondoo.  Note that cnspec depends on cnquery, so if you want both you only need to install cnspec.

To install Homebrew, visit https://brew.sh/.

Once Homebrew is installed, you can add the Mondoo Tap via the following command:

```
$ brew tap mondoohq/mondoo
```

To install cnquery/cnspec:

```
brew install cnquery
brew install cnspec
```

To update cnquery/cnspec:

```
brew update && brew upgrade cnquery
brew update && brew upgrade cnspec
```

At any time you can remove the installation and the tap via:

```
brew uninstall cnquery
brew uninstall cnspec
brew untap mondoohq/mondoo
```

For more information, visit https://mondoo.com

# Updating the Tap

To freshen the Cask and Formula to the latest release of the Mondoo client, simply run ```make update```, and commit the result:

```
$ make update
```

### Join the community!

Join the [Mondoo Community GitHub Discussions](https://github.com/orgs/mondoohq/discussions) to collaborate and discuss.