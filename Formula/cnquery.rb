
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.65.0"
  

  if Hardware::CPU.intel?
    sha256 "19c6ff255779b15174229471476c0eb39ef16d82557401c43e54e6809c63c8c2"
    url "https://releases.mondoo.com/cnquery/11.65.0/cnquery_11.65.0_darwin_amd64.tar.gz"
  else
    sha256 "ba619b6bb7cd523641cffcab2d69e9e09f86d6cebfd8e9ad52fecac1aafb9042"
    url "https://releases.mondoo.com/cnquery/11.65.0/cnquery_11.65.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

