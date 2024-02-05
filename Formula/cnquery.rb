
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "10.1.6"
  

  if Hardware::CPU.intel?
    sha256 "6a48d4957f111af79899bc871df9b842a65b780290edaa96a8c8d58eaf7e5806"
    url "https://releases.mondoo.com/cnquery/10.1.6/cnquery_10.1.6_darwin_amd64.tar.gz"
  else
    sha256 "6eedb65d5477ff2e4e307ec5123fe0eb99a59fde6d0b0a049ff0520eacad3bdf"
    url "https://releases.mondoo.com/cnquery/10.1.6/cnquery_10.1.6_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

