
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Mql < Formula
  desc "MQL - Asset Inventory Query Language"
  homepage "https://mondoo.com"
  version "14.5.0"
  

  if Hardware::CPU.intel?
    sha256 "8f6f3541f41bb159af03e58e3ba4b25c543ad71c46cbcdce2b4bdad51aeb12c6"
    url "https://releases.mondoo.com/mql/14.5.0/mql_14.5.0_darwin_amd64.tar.gz"
  else
    sha256 "4be6ef329081b5ea7dce2c6bdb5d5c8cd6f6b45ecbe736f1ce98d4430771bd93"
    url "https://releases.mondoo.com/mql/14.5.0/mql_14.5.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mql"
  end

  test do
    system "#{bin}/mql --version"
  end
end

