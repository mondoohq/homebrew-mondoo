# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "9.0.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "4f2a1af917deed1974097c1072ff174dff5862819113bde29fe58b2ff01ab573"
    url "https://releases.mondoo.com/cnspec/9.0.0/cnspec_9.0.0_darwin_amd64.tar.gz"
  else
    sha256 "00b980b0bb67e9142b6507c885cc67f2c2dcc92407f25ec5ec67f2dce99153b5"
    url "https://releases.mondoo.com/cnspec/9.0.0/cnspec_9.0.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

