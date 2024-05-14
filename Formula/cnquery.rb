
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.4.0"
  

  if Hardware::CPU.intel?
    sha256 "91cbe630273469333071c3b07edcc501d52dfabf0d96b25496bcd3eb9b913fc8"
    url "https://releases.mondoo.com/cnquery/11.4.0/cnquery_11.4.0_darwin_amd64.tar.gz"
  else
    sha256 "4c2656cb51209628d35f03059072698e95a08de1bf4aca86b046ff6a7a9d0dfd"
    url "https://releases.mondoo.com/cnquery/11.4.0/cnquery_11.4.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

