
cask "mondoo-cli" do
  name "Mondoo"
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  version "5.22.0"
  homepage "https://mondoo.io"

  url "https://releases.mondoo.io/mondoo/#{version}/mondoo_#{version}_darwin_universal.pkg"
  sha256 "5b2a2ec4341815b1b234fe4f965bedbcd02449cab165d6e4dcf1643c576cabb5"

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

