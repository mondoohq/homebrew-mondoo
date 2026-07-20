
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Mql < Formula
  desc "MQL - Asset Inventory Query Language"
  homepage "https://mondoo.com"
  version "13.30.0"
  

  if Hardware::CPU.intel?
    sha256 "3294d64983c6002e7e43c1ed73cab71d847a81d64a6e503acf8a49d603845c1d"
    url "https://releases.mondoo.com/mql/13.30.0/mql_13.30.0_darwin_amd64.tar.gz"
  else
    sha256 "65d31cde431319af3da8fd5008352229981e275ece44543d9bebe00e3a915925"
    url "https://releases.mondoo.com/mql/13.30.0/mql_13.30.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mql"
  end

  test do
    system "#{bin}/mql --version"
  end
end

