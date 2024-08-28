
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.19.1"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "33d6028c83ff9e5499a3e883e7ee09449446e233e26b84d7d7859352a8701d32"
    url "https://releases.mondoo.com/cnspec/11.19.1/cnspec_11.19.1_darwin_amd64.tar.gz"
  else
    sha256 "fc25bedf43c74bb372210574f5febda2f2c58a274601115551906096ab9a5f49"
    url "https://releases.mondoo.com/cnspec/11.19.1/cnspec_11.19.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

