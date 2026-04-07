
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

cask "mondoo" do
  name "Mondoo"
  desc "Mondoo Enterprise Package for cnquery and cnspec"
  version "13.4.0"
  homepage "https://mondoo.com"

  url "https://releases.mondoo.com/mondoo/#{version}/mondoo_#{version}_darwin_universal.pkg"
  sha256 "db2c71d9eafd635385f1b6c8276644028ae9540d851f598a3a176519f59ce22f"

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

