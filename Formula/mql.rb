
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Mql < Formula
  desc "MQL - Asset Inventory Query Language"
  homepage "https://mondoo.com"
  version "13.35.1"
  

  if Hardware::CPU.intel?
    sha256 "361960c04064e3b8791b930a7324513a0bbe66297c226aaa5a5128d37852d9d8"
    url "https://releases.mondoo.com/mql/13.35.1/mql_13.35.1_darwin_amd64.tar.gz"
  else
    sha256 "3547b86c8c4b15059f53105a19b3051c87e4a181c5e53689ecec0c6d1446221f"
    url "https://releases.mondoo.com/mql/13.35.1/mql_13.35.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mql"
  end

  test do
    system "#{bin}/mql --version"
  end
end

