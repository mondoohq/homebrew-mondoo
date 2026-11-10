
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Mql < Formula
  desc "MQL - Asset Inventory Query Language"
  homepage "https://mondoo.com"
  version "14.11.1"
  

  if Hardware::CPU.intel?
    sha256 "922e3afe293e9f28a2e29b8e9bc658efa20db82a6bfee7a8aeb08d4b703208f6"
    url "https://releases.mondoo.com/mql/14.11.1/mql_14.11.1_darwin_amd64.tar.gz"
  else
    sha256 "ea5a2a466106ab30239b5b2ecea19414929577f33acd2a763a84bec011fb7680"
    url "https://releases.mondoo.com/mql/14.11.1/mql_14.11.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mql"
  end

  test do
    system "#{bin}/mql --version"
  end
end

