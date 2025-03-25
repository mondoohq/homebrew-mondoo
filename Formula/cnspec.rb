
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.47.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "38d4996e03dc5d29779265d5b8e09f13a811deaae516d0c2d9530fad77e3a25b"
    url "https://releases.mondoo.com/cnspec/11.47.0/cnspec_11.47.0_darwin_amd64.tar.gz"
  else
    sha256 "a1f6be7b55c8cfc333014a753798a0bb4cee3817ab14a818e51ba089d87d07f1"
    url "https://releases.mondoo.com/cnspec/11.47.0/cnspec_11.47.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

