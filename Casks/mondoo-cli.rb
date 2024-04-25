
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

cask "mondoo-cli" do
  name "Mondoo"
  desc "Mondoo Enterprise Package for cnquery and cnspec"
  version "11.1.1"
  homepage "https://mondoo.com"

  url "https://releases.mondoo.com/mondoo/#{version}/mondoo_#{version}_darwin_universal.pkg"
  sha256 "5633e8cc2d5ceeb4d9a99f4c45a424f9a20b50fef8cff5c1dcd10855a5ce7969"

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

