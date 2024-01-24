
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "10.0.1"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "198ba3acd856072c2c0fed5832fd6971a1d4f1ad2045e728e597570ab7b730e1"
    url "https://releases.mondoo.com/cnspec/10.0.1/cnspec_10.0.1_darwin_amd64.tar.gz"
  else
    sha256 "0247d0471adc43650334c8db6a0cd17db804ec8c5e147522c74e4aad4c07e526"
    url "https://releases.mondoo.com/cnspec/10.0.1/cnspec_10.0.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

