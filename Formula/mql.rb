
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Mql < Formula
  desc "MQL - Asset Inventory Query Language"
  homepage "https://mondoo.com"
  version "13.8.2"
  

  if Hardware::CPU.intel?
    sha256 "8d44238f58e6f6dc2d2be754e916b60b2d2220a03609e15af691c15cdeea49d9"
    url "https://releases.mondoo.com/mql/13.8.2/mql_13.8.2_darwin_amd64.tar.gz"
  else
    sha256 "970d1ebca0bc02629eab4e250258defcbd9ada1506bbfd578520ccff5191ff5e"
    url "https://releases.mondoo.com/mql/13.8.2/mql_13.8.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mql"
  end

  test do
    system "#{bin}/mql --version"
  end
end

