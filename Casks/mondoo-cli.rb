
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

cask "mondoo-cli" do
  name "Mondoo"
  desc "Mondoo Enterprise Package for cnquery and cnspec"
  version "11.56.0"
  homepage "https://mondoo.com"

  url "https://releases.mondoo.com/mondoo/#{version}/mondoo_#{version}_darwin_universal.pkg"
  sha256 "135be4ded5ae25fbf9005283dc1ff1e82686866575ecf2badf6f5b2971947e91"

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

