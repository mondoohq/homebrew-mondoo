
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.33.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "892182fd0aecd718a7b97d9b59b70c46a843169a11ca3c447d5c339b9fcee6b6"
    url "https://releases.mondoo.com/cnspec/11.33.0/cnspec_11.33.0_darwin_amd64.tar.gz"
  else
    sha256 "53e9a2a50b151eb283efef2300ead26175bb918fdb7038e080dcd92c633e745e"
    url "https://releases.mondoo.com/cnspec/11.33.0/cnspec_11.33.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

