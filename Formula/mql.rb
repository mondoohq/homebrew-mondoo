
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Mql < Formula
  desc "MQL - Asset Inventory Query Language"
  homepage "https://mondoo.com"
  version "14.0.1"
  

  if Hardware::CPU.intel?
    sha256 "cc549f99c00a1903295f134f41ea95fec9f43140a75f720232c07c68e4bf0e9c"
    url "https://releases.mondoo.com/mql/14.0.1/mql_14.0.1_darwin_amd64.tar.gz"
  else
    sha256 "3b72692c6fb206e5b241645b31ae11dd32bd4ee166a62ce77c04d9a583c9f9e6"
    url "https://releases.mondoo.com/mql/14.0.1/mql_14.0.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mql"
  end

  test do
    system "#{bin}/mql --version"
  end
end

