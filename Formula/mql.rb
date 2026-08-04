
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Mql < Formula
  desc "MQL - Asset Inventory Query Language"
  homepage "https://mondoo.com"
  version "13.32.1"
  

  if Hardware::CPU.intel?
    sha256 "06eaad9b1811c5828f9310ae9c6bd7b878fd2da8dc5e1e7d0b7be882d6bfcabb"
    url "https://releases.mondoo.com/mql/13.32.1/mql_13.32.1_darwin_amd64.tar.gz"
  else
    sha256 "78f01ba69ea603d86636109c9201e05a9f8300646174baadb439a2a2bfb0fdcf"
    url "https://releases.mondoo.com/mql/13.32.1/mql_13.32.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mql"
  end

  test do
    system "#{bin}/mql --version"
  end
end

