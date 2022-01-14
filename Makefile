update:
	cd generator && go run . formula > ../Formula/mondoo.rb
	cd generator && go run . cask > ../Casks/mondoo-cli.rb