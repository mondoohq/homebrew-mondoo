
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "10.0.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "33f91d8c2c478a6a3ef9ad00b745bec713fa004858e3562bbe4e468b6f3b2739"
    url "https://releases.mondoo.com/cnspec/10.0.0/cnspec_10.0.0_darwin_amd64.tar.gz"
  else
    sha256 "5a98663752ead9df3a275a130eff3859e8b90e539118e995dba162798d8530a7"
    url "https://releases.mondoo.com/cnspec/10.0.0/cnspec_10.0.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

