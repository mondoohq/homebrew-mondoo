
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.67.1"
  

  if Hardware::CPU.intel?
    sha256 "d7beb5c40ce0155523d617a62217aac2b426238fe80e0c06e403c00c18911e88"
    url "https://releases.mondoo.com/cnquery/11.67.1/cnquery_11.67.1_darwin_amd64.tar.gz"
  else
    sha256 "e27588605faec4ede4963e709b9d1a4a64c2ed18a0580595b5387f0591b3f6a6"
    url "https://releases.mondoo.com/cnquery/11.67.1/cnquery_11.67.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

