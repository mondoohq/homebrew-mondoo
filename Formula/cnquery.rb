
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.58.0"
  

  if Hardware::CPU.intel?
    sha256 "230060f00c471566d41ca1d9616f6f612441d5a4ba75237d1b820a932e46b950"
    url "https://releases.mondoo.com/cnquery/11.58.0/cnquery_11.58.0_darwin_amd64.tar.gz"
  else
    sha256 "4865652b1c8e5b5ddc3d7d63dbc4e3756d071270f8ba9924828c95130faaad40"
    url "https://releases.mondoo.com/cnquery/11.58.0/cnquery_11.58.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

