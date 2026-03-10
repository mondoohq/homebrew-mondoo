
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Mql < Formula
  desc "MQL - Asset Inventory Query Language"
  homepage "https://mondoo.com"
  version "13.0.0"
  if Hardware::CPU.intel?
    sha256 "3e81a5272bc28e2940d13f914669b68f74e2bad70d239d46d427dff8168b2f71"
    url "https://releases.mondoo.com/mql/13.0.0/mql_13.0.0_darwin_amd64.tar.gz"
  else
    sha256 "566fdba8d02706d9423b594056c61b94b7c61931d033847099e4667bc5b0a285"
    url "https://releases.mondoo.com/mql/13.0.0/mql_13.0.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mql"
  end

  test do
    system "#{bin}/mql --version"
  end
end
