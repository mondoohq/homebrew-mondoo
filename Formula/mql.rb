
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Mql < Formula
  desc "MQL - Asset Inventory Query Language"
  homepage "https://mondoo.com"
  version "13.31.1"
  

  if Hardware::CPU.intel?
    sha256 "cd206fd068defb5afd017f11b1c247f4c114e2d266b0befb55360d24f7e07dc7"
    url "https://releases.mondoo.com/mql/13.31.1/mql_13.31.1_darwin_amd64.tar.gz"
  else
    sha256 "c270c244100eeee0cc65d53ba41b1d39b2a4caa06b65376ac2691e8c3dca79de"
    url "https://releases.mondoo.com/mql/13.31.1/mql_13.31.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mql"
  end

  test do
    system "#{bin}/mql --version"
  end
end

