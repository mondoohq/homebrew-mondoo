
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Mql < Formula
  desc "MQL - Asset Inventory Query Language"
  homepage "https://mondoo.com"
  version "13.3.2"
  

  if Hardware::CPU.intel?
    sha256 "2e6685a4d6cd44d1423c9b0a5971cf21384af04d1880a2a3f386684adf180c39"
    url "https://releases.mondoo.com/mql/13.3.2/mql_13.3.2_darwin_amd64.tar.gz"
  else
    sha256 "03bf33cceb5b9d3ce9308f17cfb88960be371e1df02b8c47dcb09b37f99a9c36"
    url "https://releases.mondoo.com/mql/13.3.2/mql_13.3.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mql"
  end

  test do
    system "#{bin}/mql --version"
  end
end

