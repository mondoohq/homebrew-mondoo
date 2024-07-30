
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.15.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "3bd862a655b784b6294e8307f06bce11cf7459b563fbb3c3a7c78b150636052f"
    url "https://releases.mondoo.com/cnspec/11.15.0/cnspec_11.15.0_darwin_amd64.tar.gz"
  else
    sha256 "b82e80f3bc9e6797a398b9e1e3dde3946fd6b142dc9b2fa10f733ff237cf0ba0"
    url "https://releases.mondoo.com/cnspec/11.15.0/cnspec_11.15.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

