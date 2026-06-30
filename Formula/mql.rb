
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Mql < Formula
  desc "MQL - Asset Inventory Query Language"
  homepage "https://mondoo.com"
  version "13.26.0"
  

  if Hardware::CPU.intel?
    sha256 "a33654661fad5e767b3ab397cc5eabe62c64fd85f32fa5dfafcac93b96d1c266"
    url "https://releases.mondoo.com/mql/13.26.0/mql_13.26.0_darwin_amd64.tar.gz"
  else
    sha256 "ef1b6d678e033ec3e0937c3e01b4c7d5794ecf604e685b021133a63ef61dca3f"
    url "https://releases.mondoo.com/mql/13.26.0/mql_13.26.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mql"
  end

  test do
    system "#{bin}/mql --version"
  end
end

