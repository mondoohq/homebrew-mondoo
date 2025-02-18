
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.42.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "6c77fea84292e085c94bcaa41bd4c0512147189d935718f2a57ebffa97040dd1"
    url "https://releases.mondoo.com/cnspec/11.42.0/cnspec_11.42.0_darwin_amd64.tar.gz"
  else
    sha256 "876ea46d87fd174b0fad36bbef843acee0d9a9ad26e749e5117ab09d21bd3ef5"
    url "https://releases.mondoo.com/cnspec/11.42.0/cnspec_11.42.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

