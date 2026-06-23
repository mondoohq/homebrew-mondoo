
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Mql < Formula
  desc "MQL - Asset Inventory Query Language"
  homepage "https://mondoo.com"
  version "13.24.0"
  

  if Hardware::CPU.intel?
    sha256 "b839961ea8bd46e3d5177ac1d80d4e1b52c297abe2e1a0a27eaa0370392ba8bd"
    url "https://releases.mondoo.com/mql/13.24.0/mql_13.24.0_darwin_amd64.tar.gz"
  else
    sha256 "beab9f43f082893d02ac0775f5ba0c1e0518a2d7147afbcf1923c22799bbca2b"
    url "https://releases.mondoo.com/mql/13.24.0/mql_13.24.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mql"
  end

  test do
    system "#{bin}/mql --version"
  end
end

