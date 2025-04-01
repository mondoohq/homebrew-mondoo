
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.48.0"
  

  if Hardware::CPU.intel?
    sha256 "d40a5ad924c24e89bb95c41acbbb7b2fb9e5597f59390adbfeb85e9203c18072"
    url "https://releases.mondoo.com/cnquery/11.48.0/cnquery_11.48.0_darwin_amd64.tar.gz"
  else
    sha256 "a01fdb6b9bc058d5da341085a7b9c3d3f57ad10a500ba7f743fe1112c0cb4ac0"
    url "https://releases.mondoo.com/cnquery/11.48.0/cnquery_11.48.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

