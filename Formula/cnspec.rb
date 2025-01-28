
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.39.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "936a0bc5bcb992b7c5724c284691ae416ab14f2dc6a53b5d1d3c4949ac98ad34"
    url "https://releases.mondoo.com/cnspec/11.39.0/cnspec_11.39.0_darwin_amd64.tar.gz"
  else
    sha256 "0ae43de0ca9d4263e98c71989bb0efeb09e46439798af272e76e77c878a8eb14"
    url "https://releases.mondoo.com/cnspec/11.39.0/cnspec_11.39.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

