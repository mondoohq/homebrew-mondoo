
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "10.0.0"
  

  if Hardware::CPU.intel?
    sha256 "ee71e46aade77388ac7302836392db76bd092f3e0015e800ff5c986d5a713a9b"
    url "https://releases.mondoo.com/cnquery/10.0.0/cnquery_10.0.0_darwin_amd64.tar.gz"
  else
    sha256 "64f9a4cdbdfeb27aca644b1c167a17ab95fee848be7dad8b25f5d4d86631427d"
    url "https://releases.mondoo.com/cnquery/10.0.0/cnquery_10.0.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

