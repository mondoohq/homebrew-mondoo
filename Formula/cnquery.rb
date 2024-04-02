
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "10.10.0"
  

  if Hardware::CPU.intel?
    sha256 "86dc10cb85e2791d8f214d0e678061a454a295cb470c05e5140e410ff57a13d6"
    url "https://releases.mondoo.com/cnquery/10.10.0/cnquery_10.10.0_darwin_amd64.tar.gz"
  else
    sha256 "0fcecce4439568accdbb2e0a67dbd674d7d6bcab8be3d4013e07460cd1f50e56"
    url "https://releases.mondoo.com/cnquery/10.10.0/cnquery_10.10.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

