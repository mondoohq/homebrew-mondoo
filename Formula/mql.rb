
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Mql < Formula
  desc "MQL - Asset Inventory Query Language"
  homepage "https://mondoo.com"
  version "13.30.1"
  

  if Hardware::CPU.intel?
    sha256 "b6ed6e248416dbff62481040840c925faf6ed1b4c91419bda3c7d0194f62d782"
    url "https://releases.mondoo.com/mql/13.30.1/mql_13.30.1_darwin_amd64.tar.gz"
  else
    sha256 "8a266a654c37365f932948d6ff3b0c908a00407328effae82f1f2bf664b3fba6"
    url "https://releases.mondoo.com/mql/13.30.1/mql_13.30.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mql"
  end

  test do
    system "#{bin}/mql --version"
  end
end

