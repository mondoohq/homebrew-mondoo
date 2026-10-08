
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Mql < Formula
  desc "MQL - Asset Inventory Query Language"
  homepage "https://mondoo.com"
  version "14.4.0"
  

  if Hardware::CPU.intel?
    sha256 "7d0ef2e3b6fc353a237e816a40cf3def24ef32ed23fa9ba699fdb10e1759fa11"
    url "https://releases.mondoo.com/mql/14.4.0/mql_14.4.0_darwin_amd64.tar.gz"
  else
    sha256 "66e0a599358197bfc3c27b122d61b10345e48af27f676a6fc2210b3f15d703b7"
    url "https://releases.mondoo.com/mql/14.4.0/mql_14.4.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mql"
  end

  test do
    system "#{bin}/mql --version"
  end
end

