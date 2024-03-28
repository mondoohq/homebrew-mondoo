
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "10.9.2"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "13d3cd4ea823a999f14afeb881c2d1162c5ce7bf061432c1d6f2a5e33a730cbc"
    url "https://releases.mondoo.com/cnspec/10.9.2/cnspec_10.9.2_darwin_amd64.tar.gz"
  else
    sha256 "ada862606ab71f23261bc1461d95abdeb5c0c1e2720cbf283c7e97c18620a2ea"
    url "https://releases.mondoo.com/cnspec/10.9.2/cnspec_10.9.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

