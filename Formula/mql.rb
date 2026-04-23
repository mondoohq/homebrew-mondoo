
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Mql < Formula
  desc "MQL - Asset Inventory Query Language"
  homepage "https://mondoo.com"
  version "13.6.0"
  

  if Hardware::CPU.intel?
    sha256 "970cfa4a914a9ca4d37b3689b6704848afce8ef7d1f9c3fc1e1b74285be60074"
    url "https://releases.mondoo.com/mql/13.6.0/mql_13.6.0_darwin_amd64.tar.gz"
  else
    sha256 "c3da4edc22e6e0eb3618cd1015b62cc0b691b2f14aec60d8e45bd931862b2f1c"
    url "https://releases.mondoo.com/mql/13.6.0/mql_13.6.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mql"
  end

  test do
    system "#{bin}/mql --version"
  end
end

