
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

cask "mondoo-cli" do
  name "Mondoo"
  desc "Mondoo Enterprise Package for cnquery and cnspec"
  version "13.31.0"
  homepage "https://mondoo.com"

  url "https://releases.mondoo.com/mondoo/#{version}/mondoo_#{version}_darwin_universal.pkg"
  sha256 "311a5ff0ad341bd343fb8ec44c2229839e8b06f7746b7d2354dfe78f0e6dffae"

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

