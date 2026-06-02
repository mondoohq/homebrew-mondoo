
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Mql < Formula
  desc "MQL - Asset Inventory Query Language"
  homepage "https://mondoo.com"
  version "13.21.0"
  

  if Hardware::CPU.intel?
    sha256 "4694394992ca70ad9d6171651d190587a3a15fd799ea9ba6a365cfc27eac4d53"
    url "https://releases.mondoo.com/mql/13.21.0/mql_13.21.0_darwin_amd64.tar.gz"
  else
    sha256 "10ebf85ed548ea2ab0d4eccfdb8c04cde991239ca1e254211c67a34baedcc7a9"
    url "https://releases.mondoo.com/mql/13.21.0/mql_13.21.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mql"
  end

  test do
    system "#{bin}/mql --version"
  end
end

