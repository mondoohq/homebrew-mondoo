
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Mql < Formula
  desc "MQL - Asset Inventory Query Language"
  homepage "https://mondoo.com"
  version "13.26.1"
  

  if Hardware::CPU.intel?
    sha256 "a788c2123ec59f384938903a20cdccb51acef0bafbee7b415a7cd8d5db863c92"
    url "https://releases.mondoo.com/mql/13.26.1/mql_13.26.1_darwin_amd64.tar.gz"
  else
    sha256 "83153006051c91783d9441e1b362ed390eb398221485e687b4899ab0097d8722"
    url "https://releases.mondoo.com/mql/13.26.1/mql_13.26.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mql"
  end

  test do
    system "#{bin}/mql --version"
  end
end

