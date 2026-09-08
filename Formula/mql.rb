
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Mql < Formula
  desc "MQL - Asset Inventory Query Language"
  homepage "https://mondoo.com"
  version "13.38.1"
  

  if Hardware::CPU.intel?
    sha256 "e9070661a43f60dc0554ab35b884568edc244404be5e88119b8302a6ccec0f9b"
    url "https://releases.mondoo.com/mql/13.38.1/mql_13.38.1_darwin_amd64.tar.gz"
  else
    sha256 "1573e8feacd87facdc4b248a8cad14fbd55dff3226a35d5e98690ec6b2ade0ae"
    url "https://releases.mondoo.com/mql/13.38.1/mql_13.38.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mql"
  end

  test do
    system "#{bin}/mql --version"
  end
end

