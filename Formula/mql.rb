
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Mql < Formula
  desc "MQL - Asset Inventory Query Language"
  homepage "https://mondoo.com"
  version "13.20.1"
  

  if Hardware::CPU.intel?
    sha256 "6dca8a7986641cb413356c0a7c4afd674d1a1976e280c915e25a8f4c11d6f0d8"
    url "https://releases.mondoo.com/mql/13.20.1/mql_13.20.1_darwin_amd64.tar.gz"
  else
    sha256 "5ab3d087243b69e6323b35c6ef5cd70e3c0688ace2d0395255bdc49aece3999a"
    url "https://releases.mondoo.com/mql/13.20.1/mql_13.20.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mql"
  end

  test do
    system "#{bin}/mql --version"
  end
end

