
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Mql < Formula
  desc "MQL - Asset Inventory Query Language"
  homepage "https://mondoo.com"
  version "13.8.3"
  

  if Hardware::CPU.intel?
    sha256 "135681a63d1e50f6dcd0631a0185b28c7f55113cb7ee2beca91402b76e41ef33"
    url "https://releases.mondoo.com/mql/13.8.3/mql_13.8.3_darwin_amd64.tar.gz"
  else
    sha256 "3dda29c4e1c8e27366c55d2b0aa766e3a6dde1ae6b62509b4212b57434f8340a"
    url "https://releases.mondoo.com/mql/13.8.3/mql_13.8.3_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mql"
  end

  test do
    system "#{bin}/mql --version"
  end
end

