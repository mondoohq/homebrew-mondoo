
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

cask "mondoo" do
  name "Mondoo"
  desc "Mondoo Enterprise Package for cnquery and cnspec"
  version "14.0.1"
  homepage "https://mondoo.com"

  url "https://releases.mondoo.com/mondoo/#{version}/mondoo_#{version}_darwin_universal.pkg"
  sha256 "82a1028f28e596fdecf0999ab6a8d4019f1cff7a7e95e8b972ac3956cd0ca6b0"

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

