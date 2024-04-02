
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

cask "mondoo-cli" do
  name "Mondoo"
  desc "Mondoo Enterprise Package for cnquery and cnspec"
  version "10.10.0"
  homepage "https://mondoo.com"

  url "https://releases.mondoo.com/mondoo/#{version}/mondoo_#{version}_darwin_universal.pkg"
  sha256 "25716a299a3a913920474448be14e64f5e021863f6fb356da9a7716bed365ec0"

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

