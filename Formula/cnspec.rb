
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.0.2"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "844a6d13ce869c0431e24bfd47c53b30463e36b1af5dff0c08bec53d6ec53795"
    url "https://releases.mondoo.com/cnspec/11.0.2/cnspec_11.0.2_darwin_amd64.tar.gz"
  else
    sha256 "a48db2eb175e41ec78d282a6872686c78eaeac8c4ea409ddb00e90b9f3bcd921"
    url "https://releases.mondoo.com/cnspec/11.0.2/cnspec_11.0.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

