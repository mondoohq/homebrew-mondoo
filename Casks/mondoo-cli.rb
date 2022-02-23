
cask "mondoo-cli" do
  name "Mondoo"
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  version "5.28.0"
  homepage "https://mondoo.io"

  url "https://releases.mondoo.io/mondoo/#{version}/mondoo_#{version}_darwin_universal.pkg"
  sha256 "35831318be6eb3a24e87a44031c7994281301645891e95c1a912881e9b0c0adc"

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

