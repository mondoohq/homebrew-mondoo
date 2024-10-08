
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.25.0"
  

  if Hardware::CPU.intel?
    sha256 "be1eeb5cc47c697685216e84504d3f2f1aa78eb1953328f42edc5cf73e52f69d"
    url "https://releases.mondoo.com/cnquery/11.25.0/cnquery_11.25.0_darwin_amd64.tar.gz"
  else
    sha256 "7c6015f7e89fa24c2ae68e0ac0e40051c66cc8748c8cde85a74a068796c582f3"
    url "https://releases.mondoo.com/cnquery/11.25.0/cnquery_11.25.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

