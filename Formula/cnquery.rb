
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "12.1.0"
  

  if Hardware::CPU.intel?
    sha256 "9dc839701e04971ac9bd60192d70cfe05646e64b53b8e431a017bc6fe54f4b50"
    url "https://releases.mondoo.com/cnquery/12.1.0/cnquery_12.1.0_darwin_amd64.tar.gz"
  else
    sha256 "7bd2f942874719f168f9311a80002f2c31ae18d3fff55c74f8ab04e69a879701"
    url "https://releases.mondoo.com/cnquery/12.1.0/cnquery_12.1.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

