
cask "mondoo-cli" do
  name "Mondoo"
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  version "8.24.3"
  homepage "https://mondoo.com"

  url "https://releases.mondoo.com/mondoo/#{version}/mondoo_#{version}_darwin_universal.pkg"
  sha256 "cf90837d3f92db9fd110f5cff7a55b143b23451a511b533b2d56cbf66cb92b90"

  livecheck do
    url "https://releases.mondoo.com/mondoo/latest/index.html"
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

