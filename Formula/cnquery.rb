
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "12.21.0"
  

  if Hardware::CPU.intel?
    sha256 "c259990b4c1fc7fdb0c3c30e52c58f023b11d85e4de9f618a8980bcf0ec86d6c"
    url "https://releases.mondoo.com/cnquery/12.21.0/cnquery_12.21.0_darwin_amd64.tar.gz"
  else
    sha256 "aa459aae7d8ab7c3f12a534154355a83cad08b404af94be4861bda0376b50836"
    url "https://releases.mondoo.com/cnquery/12.21.0/cnquery_12.21.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

