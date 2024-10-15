
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.26.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "aba02f802df37a7d2a682c171612951cd17747c2733a5a4839786548b9411093"
    url "https://releases.mondoo.com/cnspec/11.26.0/cnspec_11.26.0_darwin_amd64.tar.gz"
  else
    sha256 "f531f992f09acaa81011c82dc48d34debffda1d018b97398e7c52a6637bf47bf"
    url "https://releases.mondoo.com/cnspec/11.26.0/cnspec_11.26.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

