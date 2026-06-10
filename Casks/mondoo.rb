
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

cask "mondoo" do
  name "Mondoo"
  desc "Mondoo Enterprise Package for cnquery and cnspec"
  version "13.22.1"
  homepage "https://mondoo.com"

  url "https://releases.mondoo.com/mondoo/#{version}/mondoo_#{version}_darwin_universal.pkg"
  sha256 "15928fc1053d64d24755037149e079113223908b6253ccb06e9541648ffade7f"

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

