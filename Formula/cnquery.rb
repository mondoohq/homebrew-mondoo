
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "9.7.0"
  

  if Hardware::CPU.intel?
    sha256 "d206837190d36d9427c921b39711f1d3294bc6c37c57370a52a379f390dc8f22"
    url "https://releases.mondoo.com/cnquery/9.7.0/cnquery_9.7.0_darwin_amd64.tar.gz"
  else
    sha256 "dee40edb3c9c4297b504c94f4b501cd7cb354842fc4d42cc70b8d4fb9545516c"
    url "https://releases.mondoo.com/cnquery/9.7.0/cnquery_9.7.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

