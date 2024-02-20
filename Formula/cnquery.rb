
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "10.4.0"
  

  if Hardware::CPU.intel?
    sha256 "717fcf04e77e13a02e4d7648fe602cb9c692a1d0edf0219e65236a284a42f4ea"
    url "https://releases.mondoo.com/cnquery/10.4.0/cnquery_10.4.0_darwin_amd64.tar.gz"
  else
    sha256 "8f7562ae2a0dcb6ce6af36c6a14ad5eef175690526abaa27344e6481e37d58ce"
    url "https://releases.mondoo.com/cnquery/10.4.0/cnquery_10.4.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

