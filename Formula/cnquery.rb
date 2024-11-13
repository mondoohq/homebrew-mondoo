
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.30.1"
  

  if Hardware::CPU.intel?
    sha256 "2f0077a760f4528e7845abe3305b0d49bbde798274b43f8dd24ed5000f0c0ec8"
    url "https://releases.mondoo.com/cnquery/11.30.1/cnquery_11.30.1_darwin_amd64.tar.gz"
  else
    sha256 "e5c49ede39e7c56ec47686cd6aafcb80f373c698a46da9c7361615548324c8a0"
    url "https://releases.mondoo.com/cnquery/11.30.1/cnquery_11.30.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

