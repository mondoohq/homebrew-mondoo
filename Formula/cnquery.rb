
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.5.0"
  

  if Hardware::CPU.intel?
    sha256 "e40333030870ea8eed56df9fa7af251e381e41c05e721f7473186add50577945"
    url "https://releases.mondoo.com/cnquery/11.5.0/cnquery_11.5.0_darwin_amd64.tar.gz"
  else
    sha256 "e731db9f898e55443c3292d85bdd31a36d46d0cd56c7fb0228c4a0960849e861"
    url "https://releases.mondoo.com/cnquery/11.5.0/cnquery_11.5.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

