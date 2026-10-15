
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Mql < Formula
  desc "MQL - Asset Inventory Query Language"
  homepage "https://mondoo.com"
  version "14.7.0"
  

  if Hardware::CPU.intel?
    sha256 "af56e8509d3d7aea4a6f4b7c2a0fca7332557f988a67022b682e9ac2b77faa01"
    url "https://releases.mondoo.com/mql/14.7.0/mql_14.7.0_darwin_amd64.tar.gz"
  else
    sha256 "b11defbba244d3c40be116da0692c707cfe5497ffc66b41ea4f9da5951f99f49"
    url "https://releases.mondoo.com/mql/14.7.0/mql_14.7.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mql"
  end

  test do
    system "#{bin}/mql --version"
  end
end

