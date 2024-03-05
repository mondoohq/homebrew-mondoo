
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "10.6.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "4638074ff589eab344e61c47d106811ced338ce5bb8992266beceb58f0098ad8"
    url "https://releases.mondoo.com/cnspec/10.6.0/cnspec_10.6.0_darwin_amd64.tar.gz"
  else
    sha256 "ecc056946d4120d24adb8578114ba26d0336cc54d56787a3be0a15fe218b92b0"
    url "https://releases.mondoo.com/cnspec/10.6.0/cnspec_10.6.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

