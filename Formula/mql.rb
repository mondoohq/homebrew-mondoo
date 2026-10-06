
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Mql < Formula
  desc "MQL - Asset Inventory Query Language"
  homepage "https://mondoo.com"
  version "14.3.0"
  

  if Hardware::CPU.intel?
    sha256 "6364ea47981c06c48618262f562b9f21443a64f9143b757b72cfc363c7bcd1f3"
    url "https://releases.mondoo.com/mql/14.3.0/mql_14.3.0_darwin_amd64.tar.gz"
  else
    sha256 "417584fa139b540adc9ab68968a2b6cbbe43430fd6de1792b1f6ef0ee0aa84ea"
    url "https://releases.mondoo.com/mql/14.3.0/mql_14.3.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mql"
  end

  test do
    system "#{bin}/mql --version"
  end
end

