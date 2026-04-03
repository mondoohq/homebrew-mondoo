
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Mql < Formula
  desc "MQL - Asset Inventory Query Language"
  homepage "https://mondoo.com"
  version "13.3.3"
  

  if Hardware::CPU.intel?
    sha256 "75112e6a877e5434b18628bd2b8695ca9061e875ac7554879200c511c5412830"
    url "https://releases.mondoo.com/mql/13.3.3/mql_13.3.3_darwin_amd64.tar.gz"
  else
    sha256 "b5a04e89a4c4ef1887a9df7f79f5f3140591b28840964d885b5f29be79305d11"
    url "https://releases.mondoo.com/mql/13.3.3/mql_13.3.3_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mql"
  end

  test do
    system "#{bin}/mql --version"
  end
end

