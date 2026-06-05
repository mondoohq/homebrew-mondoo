
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Mql < Formula
  desc "MQL - Asset Inventory Query Language"
  homepage "https://mondoo.com"
  version "13.21.1"
  

  if Hardware::CPU.intel?
    sha256 "8b31e7f34c9db5d27e68957cb0ee0701c28677bb9fb34bcc41b7e4b9d11aac14"
    url "https://releases.mondoo.com/mql/13.21.1/mql_13.21.1_darwin_amd64.tar.gz"
  else
    sha256 "96c90149d206e5ce37152b794e9dcbf53ebc699583cae9883c60593f5e68a074"
    url "https://releases.mondoo.com/mql/13.21.1/mql_13.21.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mql"
  end

  test do
    system "#{bin}/mql --version"
  end
end

