
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.51.1"
  

  if Hardware::CPU.intel?
    sha256 "91b7dd5c1b15eea6a9cbb64549adc6dd4a4f2d8a373328dd51920a949debf6a7"
    url "https://releases.mondoo.com/cnquery/11.51.1/cnquery_11.51.1_darwin_amd64.tar.gz"
  else
    sha256 "304e08c465effc6563cd3a74d9527df8babac0b4f577559355abc267c537654d"
    url "https://releases.mondoo.com/cnquery/11.51.1/cnquery_11.51.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

