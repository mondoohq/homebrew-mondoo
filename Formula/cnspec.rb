
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "10.3.2"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "f836f7fdccf800712147708ebc0f796ff9d5d470a59952f748cad864ccac974b"
    url "https://releases.mondoo.com/cnspec/10.3.2/cnspec_10.3.2_darwin_amd64.tar.gz"
  else
    sha256 "bda38763a1ecf04f0d24ac3b8c14916a5ef549a4ab6f280bb1fac2cfd57d96b0"
    url "https://releases.mondoo.com/cnspec/10.3.2/cnspec_10.3.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

