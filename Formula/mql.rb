
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Mql < Formula
  desc "MQL - Asset Inventory Query Language"
  homepage "https://mondoo.com"
  version "13.27.3"
  

  if Hardware::CPU.intel?
    sha256 "684058183c5fcb147bc7f09d6135631375f27e8229edd5d9dca2b143ac799bc2"
    url "https://releases.mondoo.com/mql/13.27.3/mql_13.27.3_darwin_amd64.tar.gz"
  else
    sha256 "39f6723827870b28a95907fde5f7d9510ecb8511d97bd1bf6a875555d4b4f4a1"
    url "https://releases.mondoo.com/mql/13.27.3/mql_13.27.3_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mql"
  end

  test do
    system "#{bin}/mql --version"
  end
end

