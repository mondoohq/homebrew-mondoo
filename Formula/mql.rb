
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Mql < Formula
  desc "MQL - Asset Inventory Query Language"
  homepage "https://mondoo.com"
  version "13.33.0"
  

  if Hardware::CPU.intel?
    sha256 "d951f07aeffa2c0a3dbcd64c2e5db403237d9eb73d628e2ed47e605e76529ba1"
    url "https://releases.mondoo.com/mql/13.33.0/mql_13.33.0_darwin_amd64.tar.gz"
  else
    sha256 "fb3ae4ec14d1bda1c423b287a2f5f0f78769f988123a492466c3a58e8b77c24e"
    url "https://releases.mondoo.com/mql/13.33.0/mql_13.33.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mql"
  end

  test do
    system "#{bin}/mql --version"
  end
end

