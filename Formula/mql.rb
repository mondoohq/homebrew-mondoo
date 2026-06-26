
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Mql < Formula
  desc "MQL - Asset Inventory Query Language"
  homepage "https://mondoo.com"
  version "13.24.2"
  

  if Hardware::CPU.intel?
    sha256 "9fa1ca6b21d75609581c13a45a445083a73b19b600b5e3ac59fa864d99869079"
    url "https://releases.mondoo.com/mql/13.24.2/mql_13.24.2_darwin_amd64.tar.gz"
  else
    sha256 "b392f80e74978dbf1832600a2d49ce7b292ca813e82a900d46655983aa271f5e"
    url "https://releases.mondoo.com/mql/13.24.2/mql_13.24.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mql"
  end

  test do
    system "#{bin}/mql --version"
  end
end

