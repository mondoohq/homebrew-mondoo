
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.12.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "980c462631bfa002f2f8303285aa5275f1c77daa12cd9fc1edecfde94a4cd326"
    url "https://releases.mondoo.com/cnspec/11.12.0/cnspec_11.12.0_darwin_amd64.tar.gz"
  else
    sha256 "e6c43bd9a7d5efa49f303263a13ce168a0c04619bbd782365739490c0c9c5d40"
    url "https://releases.mondoo.com/cnspec/11.12.0/cnspec_11.12.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

