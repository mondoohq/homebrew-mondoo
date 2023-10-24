
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "9.3.0"
  

  if Hardware::CPU.intel?
    sha256 "a28d986c8d90712917425c2741c0cbd193ecc00ef0528222f4602a044c4657ca"
    url "https://releases.mondoo.com/cnquery/9.3.0/cnquery_9.3.0_darwin_amd64.tar.gz"
  else
    sha256 "0eb7968d9bd945a913faebd9f17cad88ed5da93502343e88f9c6a177b40f0698"
    url "https://releases.mondoo.com/cnquery/9.3.0/cnquery_9.3.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

