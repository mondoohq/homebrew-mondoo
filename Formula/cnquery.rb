
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.1.1"
  

  if Hardware::CPU.intel?
    sha256 "3e9f639f96ef1bb983145993e0de3e0ad9c0bb706581bd2a772ab06b436c35e3"
    url "https://releases.mondoo.com/cnquery/11.1.1/cnquery_11.1.1_darwin_amd64.tar.gz"
  else
    sha256 "9f1277fc4a702f8e498995de92bb294e8aa443916334a16ff515bfaf1240b98b"
    url "https://releases.mondoo.com/cnquery/11.1.1/cnquery_11.1.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

