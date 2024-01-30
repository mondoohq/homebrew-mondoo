
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "10.1.2"
  

  if Hardware::CPU.intel?
    sha256 "06155bde8c781889fa6131fa6310aab9ece4bc3ab1d2387497831e9a770a3b1d"
    url "https://releases.mondoo.com/cnquery/10.1.2/cnquery_10.1.2_darwin_amd64.tar.gz"
  else
    sha256 "298f9568814c122cca7e661f5dfee3d97643e6dd5b039812ef45b4d096a4bec1"
    url "https://releases.mondoo.com/cnquery/10.1.2/cnquery_10.1.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

