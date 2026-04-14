
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Mql < Formula
  desc "MQL - Asset Inventory Query Language"
  homepage "https://mondoo.com"
  version "13.5.0"
  

  if Hardware::CPU.intel?
    sha256 "e3a61e485b1ca91b7a50540a1e6c5a350d1343380a9e14d52bde3168573da7d9"
    url "https://releases.mondoo.com/mql/13.5.0/mql_13.5.0_darwin_amd64.tar.gz"
  else
    sha256 "54e86ea8239c3307e15be29b54ad17766ea3510cd559f96bd142c5770820291d"
    url "https://releases.mondoo.com/mql/13.5.0/mql_13.5.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mql"
  end

  test do
    system "#{bin}/mql --version"
  end
end

