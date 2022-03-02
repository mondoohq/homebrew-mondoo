
cask "mondoo-cli" do
  name "Mondoo"
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  version "5.29.1"
  homepage "https://mondoo.io"

  url "https://releases.mondoo.io/mondoo/#{version}/mondoo_#{version}_darwin_universal.pkg"
  sha256 "817c79974f87626c19d69a0bf9bfeed303db3c527dd18d3061c796d46428a34f"

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

