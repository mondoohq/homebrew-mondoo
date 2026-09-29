
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Mql < Formula
  desc "MQL - Asset Inventory Query Language"
  homepage "https://mondoo.com"
  version "14.2.0"
  

  if Hardware::CPU.intel?
    sha256 "02d1a149d192f2439222a4eab29a32fa03c31afb6cebb13e1eb23e36c7e32117"
    url "https://releases.mondoo.com/mql/14.2.0/mql_14.2.0_darwin_amd64.tar.gz"
  else
    sha256 "98afcfc2622fcc990202e447033646d1de26040fa2871e95af3b426f9ddac2a8"
    url "https://releases.mondoo.com/mql/14.2.0/mql_14.2.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mql"
  end

  test do
    system "#{bin}/mql --version"
  end
end

