
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Mql < Formula
  desc "MQL - Asset Inventory Query Language"
  homepage "https://mondoo.com"
  version "13.4.1"
  

  if Hardware::CPU.intel?
    sha256 "44ee711b55d2b605cf39523019af39dc38211195ec114395964cc4d04ff582e5"
    url "https://releases.mondoo.com/mql/13.4.1/mql_13.4.1_darwin_amd64.tar.gz"
  else
    sha256 "ac6966527793ef78c5e4a0cbacda179674a64b6348ecd5ac9f1a0c463df0d9ac"
    url "https://releases.mondoo.com/mql/13.4.1/mql_13.4.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mql"
  end

  test do
    system "#{bin}/mql --version"
  end
end

