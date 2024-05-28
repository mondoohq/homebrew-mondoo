
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.6.0"
  

  if Hardware::CPU.intel?
    sha256 "80cdc14600923511a554c4c8ca7b72e46434de60448ce0ace56c87ec87c6e5c2"
    url "https://releases.mondoo.com/cnquery/11.6.0/cnquery_11.6.0_darwin_amd64.tar.gz"
  else
    sha256 "223f4fa693f7dd022abae77c519d6c6c67a1865e1d07dfbd84fecce36f1004b9"
    url "https://releases.mondoo.com/cnquery/11.6.0/cnquery_11.6.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

