
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.9.1"
  

  if Hardware::CPU.intel?
    sha256 "b1867d0d730476d296396a101fac56b44c7723bf23187915c2830d7b89c75f5a"
    url "https://releases.mondoo.com/cnquery/11.9.1/cnquery_11.9.1_darwin_amd64.tar.gz"
  else
    sha256 "19c3146247bed8ec3f6ad752028c17a5f3c1a32cde01645607263cedde29d2d7"
    url "https://releases.mondoo.com/cnquery/11.9.1/cnquery_11.9.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

