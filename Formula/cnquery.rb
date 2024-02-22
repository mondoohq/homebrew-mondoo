
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "10.4.1"
  

  if Hardware::CPU.intel?
    sha256 "1d6b4a44fa5dd4285d67be5f2748785240c9a1a04af5376f27120b03662ed5f3"
    url "https://releases.mondoo.com/cnquery/10.4.1/cnquery_10.4.1_darwin_amd64.tar.gz"
  else
    sha256 "6a50c0f10907f55a6634556f7385a68b61339fcd160931944f31631878e99a2b"
    url "https://releases.mondoo.com/cnquery/10.4.1/cnquery_10.4.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

