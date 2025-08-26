
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.69.0"
  

  if Hardware::CPU.intel?
    sha256 "42404d06ee058f8b71869b1905b3b8732c986373793b80e17844529fefc635c9"
    url "https://releases.mondoo.com/cnquery/11.69.0/cnquery_11.69.0_darwin_amd64.tar.gz"
  else
    sha256 "c078c9265e2c4fcba86a06fe44ff8fd4d441f5b614d2c6aabb0b084b057e826c"
    url "https://releases.mondoo.com/cnquery/11.69.0/cnquery_11.69.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

