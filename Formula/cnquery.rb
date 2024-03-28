
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "10.9.2"
  

  if Hardware::CPU.intel?
    sha256 "2245d345a5f3e30fa5ccbf876a2ddddb494bb579cc2c6a328b672250245cdfad"
    url "https://releases.mondoo.com/cnquery/10.9.2/cnquery_10.9.2_darwin_amd64.tar.gz"
  else
    sha256 "0287754b77890c75c3e6482de4643f1c05667a4e9e5cbe9b2d29b1293c163f3c"
    url "https://releases.mondoo.com/cnquery/10.9.2/cnquery_10.9.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

