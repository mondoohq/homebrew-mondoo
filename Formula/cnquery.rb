
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "9.1.0"
  

  if Hardware::CPU.intel?
    sha256 "c00c0c8fe395d6d7b97a30dcb9438fd54c1bc94742eb1f3a1a4b4d1c9eebbeac"
    url "https://releases.mondoo.com/cnquery/9.1.0/cnquery_9.1.0_darwin_amd64.tar.gz"
  else
    sha256 "8844d4c6b4e8d7c2b395f8037cd62901034f2f1b72bffceeee64dd64288dc1e3"
    url "https://releases.mondoo.com/cnquery/9.1.0/cnquery_9.1.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

