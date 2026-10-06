
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Mql < Formula
  desc "MQL - Asset Inventory Query Language"
  homepage "https://mondoo.com"
  version "14.3.1"
  

  if Hardware::CPU.intel?
    sha256 "0d8309981d96fe22d9da0ee150b0b6abc71f0e59b8675172722c722b9e1af06f"
    url "https://releases.mondoo.com/mql/14.3.1/mql_14.3.1_darwin_amd64.tar.gz"
  else
    sha256 "c32315f43ec260d2a882f9db84c7aacaa68d270d425082bcea9c790a3a40270a"
    url "https://releases.mondoo.com/mql/14.3.1/mql_14.3.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mql"
  end

  test do
    system "#{bin}/mql --version"
  end
end

