
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Mql < Formula
  desc "MQL - Asset Inventory Query Language"
  homepage "https://mondoo.com"
  version "14.14.0"
  

  if Hardware::CPU.intel?
    sha256 "6111d4cfa38ade3e4e8ebe294ceec57a7a718bbade9e53b67d23ab2d027001ca"
    url "https://releases.mondoo.com/mql/14.14.0/mql_14.14.0_darwin_amd64.tar.gz"
  else
    sha256 "637b6d7fcddaf3ccf89627432e0a66d779ebb535c811e091e9b4841a9da01c7e"
    url "https://releases.mondoo.com/mql/14.14.0/mql_14.14.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mql"
  end

  test do
    system "#{bin}/mql --version"
  end
end

