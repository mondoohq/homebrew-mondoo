
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Mql < Formula
  desc "MQL - Asset Inventory Query Language"
  homepage "https://mondoo.com"
  version "14.6.0"
  

  if Hardware::CPU.intel?
    sha256 "01f12bef6a800a84025391060e22e7b79a660721cc08db1cc34c37225632d597"
    url "https://releases.mondoo.com/mql/14.6.0/mql_14.6.0_darwin_amd64.tar.gz"
  else
    sha256 "4d3dde2acf985b30863574d30630052398082dd365f4348a0cab3d2293a2ed2b"
    url "https://releases.mondoo.com/mql/14.6.0/mql_14.6.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mql"
  end

  test do
    system "#{bin}/mql --version"
  end
end

