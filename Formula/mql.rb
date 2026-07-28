
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Mql < Formula
  desc "MQL - Asset Inventory Query Language"
  homepage "https://mondoo.com"
  version "13.31.0"
  

  if Hardware::CPU.intel?
    sha256 "5c7f1a9abaf363773817942e299ddbae6a8ae8dd78cd2bb03a9aa403feba79b6"
    url "https://releases.mondoo.com/mql/13.31.0/mql_13.31.0_darwin_amd64.tar.gz"
  else
    sha256 "02b2d595917189dc7c22f57bd5690ab1a5e02121f7fa4604fb2fc39eabe3fde5"
    url "https://releases.mondoo.com/mql/13.31.0/mql_13.31.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mql"
  end

  test do
    system "#{bin}/mql --version"
  end
end

