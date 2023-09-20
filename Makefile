update:
	cd generator && go run . formula mondoo > ../Formula/mondoo.rb
	cd generator && go run . formula cnquery > ../Formula/cnquery.rb
	cd generator && go run . formula cnspec > ../Formula/cnspec.rb
	cd generator && go run . cask mondoo> ../Casks/mondoo-cli.rb

# Copywrite Check Tool: https://github.com/hashicorp/copywrite
license: license/headers/check

license/headers/check:
	copywrite headers --plan

license/headers/apply:
	copywrite headers
