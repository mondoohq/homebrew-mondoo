update:
	cd generator && go run . formula mondoo > ../Formula/mondoo.rb
	cd generator && go run . formula cnquery > ../Formula/cnquery.rb
	cd generator && go run . formula cnspec > ../Formula/cnspec.rb
	cd generator && go run . cask mondoo> ../Casks/mondoo-cli.rb