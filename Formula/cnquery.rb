
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.47.0"
  

  if Hardware::CPU.intel?
    sha256 "37e61ea7d7082d0b8c00299c716340ab186170c4f090d5d3f016baf57bc7c920"
    url "https://releases.mondoo.com/cnquery/11.47.0/cnquery_11.47.0_darwin_amd64.tar.gz"
  else
    sha256 "9d47a7cbb8d3954abf149a9adceb1eb8202b2b833348946807d3c90a9004f03d"
    url "https://releases.mondoo.com/cnquery/11.47.0/cnquery_11.47.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

