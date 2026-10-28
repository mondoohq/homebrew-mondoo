
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Mql < Formula
  desc "MQL - Asset Inventory Query Language"
  homepage "https://mondoo.com"
  version "14.9.1"
  

  if Hardware::CPU.intel?
    sha256 "1c48bd73cb607b095a6ed205c6cecfdbf8c7074459006df9b0af49cad4628282"
    url "https://releases.mondoo.com/mql/14.9.1/mql_14.9.1_darwin_amd64.tar.gz"
  else
    sha256 "c9a567b3e3d96ff8eae55284a893c48c5dec3ea5968c9a9177e7d7fd4dbac20a"
    url "https://releases.mondoo.com/mql/14.9.1/mql_14.9.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mql"
  end

  test do
    system "#{bin}/mql --version"
  end
end

