
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Mql < Formula
  desc "MQL - Asset Inventory Query Language"
  homepage "https://mondoo.com"
  version "13.34.1"
  

  if Hardware::CPU.intel?
    sha256 "36de7dee8fb4466332074a350e9d03f81817bd87877727962b7728cdf30e1569"
    url "https://releases.mondoo.com/mql/13.34.1/mql_13.34.1_darwin_amd64.tar.gz"
  else
    sha256 "adf85c0c004dc12bb5d6e2cd1f5d3b8fb5f52f843ff70113b02aff5f141744c5"
    url "https://releases.mondoo.com/mql/13.34.1/mql_13.34.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mql"
  end

  test do
    system "#{bin}/mql --version"
  end
end

