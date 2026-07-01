
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Mql < Formula
  desc "MQL - Asset Inventory Query Language"
  homepage "https://mondoo.com"
  version "13.27.0"
  

  if Hardware::CPU.intel?
    sha256 "ca2e1094feac393770d713a0c6d3f224f5d0c0fc641d6462aee162d84fed1997"
    url "https://releases.mondoo.com/mql/13.27.0/mql_13.27.0_darwin_amd64.tar.gz"
  else
    sha256 "c7e62253eb2786ab813180e0d9b47d8f72829d169ab3c03062a6a12161ffd1a6"
    url "https://releases.mondoo.com/mql/13.27.0/mql_13.27.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mql"
  end

  test do
    system "#{bin}/mql --version"
  end
end

