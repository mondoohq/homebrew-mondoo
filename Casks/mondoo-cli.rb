
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

cask "mondoo-cli" do
  name "Mondoo"
  desc "Mondoo Enterprise Package for cnquery and cnspec"
  version "14.14.0"
  homepage "https://mondoo.com"

  url "https://releases.mondoo.com/mondoo/#{version}/mondoo_#{version}_darwin_universal.pkg"
  sha256 "1c6a0f435556307ee4d0c72ff972c2b7b3e9395155044cfee4f529d4f4800a6c"

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

