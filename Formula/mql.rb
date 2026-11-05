
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Mql < Formula
  desc "MQL - Asset Inventory Query Language"
  homepage "https://mondoo.com"
  version "14.10.0"
  

  if Hardware::CPU.intel?
    sha256 "488d00ffd2396f5e3f2368afe17a42eb2fe9ff1112b4fa35cb5882cb668f9e19"
    url "https://releases.mondoo.com/mql/14.10.0/mql_14.10.0_darwin_amd64.tar.gz"
  else
    sha256 "cb0a9c315ad3babfc5d3d6fef9740555a62e41c1065fa457996b166d065f8c0e"
    url "https://releases.mondoo.com/mql/14.10.0/mql_14.10.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mql"
  end

  test do
    system "#{bin}/mql --version"
  end
end

