
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Mql < Formula
  desc "MQL - Asset Inventory Query Language"
  homepage "https://mondoo.com"
  version "13.5.1"
  

  if Hardware::CPU.intel?
    sha256 "306015a0254b341caafe44ed6de766b17aedcdceb06aa8ccbd75ee8946965092"
    url "https://releases.mondoo.com/mql/13.5.1/mql_13.5.1_darwin_amd64.tar.gz"
  else
    sha256 "7aa001b113d863e89e3ebcc07873223902512666df719685828f100d34134e52"
    url "https://releases.mondoo.com/mql/13.5.1/mql_13.5.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mql"
  end

  test do
    system "#{bin}/mql --version"
  end
end

