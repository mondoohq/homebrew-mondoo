
cask "mondoo-cli" do
  name "Mondoo"
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  version "5.25.1"
  homepage "https://mondoo.io"

  url "https://releases.mondoo.io/mondoo/#{version}/mondoo_#{version}_darwin_universal.pkg"
  sha256 "fe00a12f40fffb9610f0ac57b111b978ca02dcd53697b6f4cd127541d9e53f69"

  livecheck do
    url "https://releases.mondoo.io/mondoo/latest/index.html"
    regex(%r{href='\.\./(\d+(?:\.\d+)+)}i)
  end

  pkg "mondoo_#{version}_darwin_universal.pkg"

  uninstall script: {
    executable: "/Library/Mondoo/uninstall.sh",
    sudo:       true,
  }

  zap trash: [
    "/Library/Mondoo",
    "/etc/opt/mondoo",
    "/usr/local/bin/mondoo",
    "/Library/LaunchDaemons/io.mondoo.client.plist",
  ]
end

