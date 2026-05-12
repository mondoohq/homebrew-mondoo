
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Mql < Formula
  desc "MQL - Asset Inventory Query Language"
  homepage "https://mondoo.com"
  version "13.9.0"
  

  if Hardware::CPU.intel?
    sha256 "51af718e3e8727a310d3ace350036965cc2e04570ff27a4d5ce9eb80b11b2114"
    url "https://releases.mondoo.com/mql/13.9.0/mql_13.9.0_darwin_amd64.tar.gz"
  else
    sha256 "e02a37cd58aff6f26bdbe8af6c071aa36f689324d28b2a1b0e6159f4fdba3594"
    url "https://releases.mondoo.com/mql/13.9.0/mql_13.9.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mql"
  end

  test do
    system "#{bin}/mql --version"
  end
end

