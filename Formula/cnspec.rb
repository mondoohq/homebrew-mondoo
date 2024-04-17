
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.0.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "d2c4419b04da173b1a4810a607435768263592408da96f86471b3e53f6f7bdf7"
    url "https://releases.mondoo.com/cnspec/11.0.0/cnspec_11.0.0_darwin_amd64.tar.gz"
  else
    sha256 "8a6056efa7fe06449670390d4c6cacafce910dfc9fc974deebca6d110f28d4a4"
    url "https://releases.mondoo.com/cnspec/11.0.0/cnspec_11.0.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

