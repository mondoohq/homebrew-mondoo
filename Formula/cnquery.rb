
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "12.7.1"
  

  if Hardware::CPU.intel?
    sha256 "23d3208a23f61e0d2c34ad1f0ac7e168ba10c5490df6d51c804c1c9f7479d2c0"
    url "https://releases.mondoo.com/cnquery/12.7.1/cnquery_12.7.1_darwin_amd64.tar.gz"
  else
    sha256 "c30fe857870d7ddf9ce67ac28c1145ecd11c507b6c3add7cf6b8234d3b90ef4c"
    url "https://releases.mondoo.com/cnquery/12.7.1/cnquery_12.7.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

