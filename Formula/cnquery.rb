
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.63.0"
  

  if Hardware::CPU.intel?
    sha256 "43726a2343e2e82d65718485cd25e1a98cd0f2017d30ddb7fc03f59c84e1d0fb"
    url "https://releases.mondoo.com/cnquery/11.63.0/cnquery_11.63.0_darwin_amd64.tar.gz"
  else
    sha256 "7106ba640e7599be3459f702c677de7aee8038e3d0012af6e05304187b047ca4"
    url "https://releases.mondoo.com/cnquery/11.63.0/cnquery_11.63.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

