
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Mql < Formula
  desc "MQL - Asset Inventory Query Language"
  homepage "https://mondoo.com"
  version "13.38.0"
  

  if Hardware::CPU.intel?
    sha256 "61464b85cffb1551b6b7c2c80189d2665cf6471eb9f5a6aeecb0a94efe55872f"
    url "https://releases.mondoo.com/mql/13.38.0/mql_13.38.0_darwin_amd64.tar.gz"
  else
    sha256 "d0db785ac774c268e1bec496fc8c8891b683d8d7a61541579074518df358df73"
    url "https://releases.mondoo.com/mql/13.38.0/mql_13.38.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mql"
  end

  test do
    system "#{bin}/mql --version"
  end
end

