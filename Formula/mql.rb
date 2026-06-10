
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Mql < Formula
  desc "MQL - Asset Inventory Query Language"
  homepage "https://mondoo.com"
  version "13.22.1"
  

  if Hardware::CPU.intel?
    sha256 "1df5a08decb0a1a517a13eaf21ad7f74e312b06c5b1dd03343e847dbc31216c2"
    url "https://releases.mondoo.com/mql/13.22.1/mql_13.22.1_darwin_amd64.tar.gz"
  else
    sha256 "48818841e85d6416c238a18bfa6d05bb0e75517555b190e9516de8d9207c9fce"
    url "https://releases.mondoo.com/mql/13.22.1/mql_13.22.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mql"
  end

  test do
    system "#{bin}/mql --version"
  end
end

