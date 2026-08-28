
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Mql < Formula
  desc "MQL - Asset Inventory Query Language"
  homepage "https://mondoo.com"
  version "13.37.0"
  

  if Hardware::CPU.intel?
    sha256 "e5e9a501e6897a58bd52d2224d1b74b0156a5b9cb75a59599a938593411cfe48"
    url "https://releases.mondoo.com/mql/13.37.0/mql_13.37.0_darwin_amd64.tar.gz"
  else
    sha256 "9834e5a34b4e811e6ab133a9c689190d42d7342e4c6df95db067c3d195912419"
    url "https://releases.mondoo.com/mql/13.37.0/mql_13.37.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mql"
  end

  test do
    system "#{bin}/mql --version"
  end
end

