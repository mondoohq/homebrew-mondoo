
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "12.0.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "5ff35db6e8e53967a426b264a54aefb1f492432061671430d63d33f6202730ac"
    url "https://releases.mondoo.com/cnspec/12.0.0/cnspec_12.0.0_darwin_amd64.tar.gz"
  else
    sha256 "aa2c7f6b5ae82f94d3f2d131f699c3aaccc9c8f1879580c5c2e261ad060d1014"
    url "https://releases.mondoo.com/cnspec/12.0.0/cnspec_12.0.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

