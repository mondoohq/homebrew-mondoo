# Mondoo Homebrew Tap

Welcome to the Mondoo Homebrew Tap!  Here you will find both a formula and cask for installation of the Mondoo Client.  The formula will install the Mondoo Client binary in your Homebrew application root (usually ).  The cask wraps our signed and notorized Apple PKG installing it to /Library/Mondoo.  

To install Homebrew, visit https://brew.sh/.

Once Homebrew is installed, you can add the Mondoo Tap via the following command:

```
$ brew tap mondoohq/mondoo
```

To install mondoo:

```
$ brew install mondoo
```

To update mondoo:

```
brew update && brew upgrade mondoo
```

At any time you can remove the installation and the tap via:

```
brew uninstall mondoo
brew untap mondoohq/mondoo
```

For more information, visit https://mondoo.com

# Updating the Tap

To freshen the Cask and Formula to the latest release of the Mondoo client, simply run ```make update```, and commit the result:

```
$ make update
```
