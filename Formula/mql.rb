
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Mql < Formula
  desc "MQL - Asset Inventory Query Language"
  homepage "https://mondoo.com"
  version "13.32.0"
  

  if Hardware::CPU.intel?
    sha256 "b6aced488dd4a7f51d283ea0ab22135c9bfe191b4583946b2c988ee7daa8f572"
    url "https://releases.mondoo.com/mql/13.32.0/mql_13.32.0_darwin_amd64.tar.gz"
  else
    sha256 "921a7bb7c405f885c167e9110a17ddc8f960351f591c7e5e943f1d3a8498d953"
    url "https://releases.mondoo.com/mql/13.32.0/mql_13.32.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mql"
  end

  test do
    system "#{bin}/mql --version"
  end
end

