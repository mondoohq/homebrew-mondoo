
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Mql < Formula
  desc "MQL - Asset Inventory Query Language"
  homepage "https://mondoo.com"
  version "13.11.0"
  

  if Hardware::CPU.intel?
    sha256 "b209834adc152935a08d50a9d482a4202103167596f6e8fb0c1484e38302ab1b"
    url "https://releases.mondoo.com/mql/13.11.0/mql_13.11.0_darwin_amd64.tar.gz"
  else
    sha256 "3259759268a69e6d254482e96542f4fff05e41e366cc666566efa9d06ba150a5"
    url "https://releases.mondoo.com/mql/13.11.0/mql_13.11.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mql"
  end

  test do
    system "#{bin}/mql --version"
  end
end

