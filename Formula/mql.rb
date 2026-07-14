
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Mql < Formula
  desc "MQL - Asset Inventory Query Language"
  homepage "https://mondoo.com"
  version "13.29.0"
  

  if Hardware::CPU.intel?
    sha256 "c12f34d2b72b5310fbe83393c3297008e5c05a950bf1210bd53b8ba2963b0197"
    url "https://releases.mondoo.com/mql/13.29.0/mql_13.29.0_darwin_amd64.tar.gz"
  else
    sha256 "89c0fa0111d4fe691b32817defaaf205512005503a0cf846dd54132ec8e843b1"
    url "https://releases.mondoo.com/mql/13.29.0/mql_13.29.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mql"
  end

  test do
    system "#{bin}/mql --version"
  end
end

