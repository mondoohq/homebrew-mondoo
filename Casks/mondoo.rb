
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

cask "mondoo" do
  name "Mondoo"
  desc "Mondoo Enterprise Package for cnquery and cnspec"
  version "9.3.4"
  homepage "https://mondoo.com"

  url "https://releases.mondoo.com/mondoo/#{version}/mondoo_#{version}_darwin_universal.pkg"
  sha256 "979240237586ce71fc30542dae40267af6ed5440a1e8da2bbb4b6f2d0835a06c"

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

