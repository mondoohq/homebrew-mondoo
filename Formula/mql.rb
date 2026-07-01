
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Mql < Formula
  desc "MQL - Asset Inventory Query Language"
  homepage "https://mondoo.com"
  version "13.27.1"
  

  if Hardware::CPU.intel?
    sha256 "83abe0608aeb8d252877e0248ac96cb426bb8552ec6544c97dd01b1fc1d26d9d"
    url "https://releases.mondoo.com/mql/13.27.1/mql_13.27.1_darwin_amd64.tar.gz"
  else
    sha256 "bb696e45013f34891aa9899c1fa1ce069fa95c6b49e23bbf66648865570eb9e3"
    url "https://releases.mondoo.com/mql/13.27.1/mql_13.27.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mql"
  end

  test do
    system "#{bin}/mql --version"
  end
end

