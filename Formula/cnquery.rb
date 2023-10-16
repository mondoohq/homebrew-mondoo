
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "9.2.0"
  

  if Hardware::CPU.intel?
    sha256 "402399a15c7e587df8105f046fc01dc1cea6e5372c1d8bc6e7ca6cb134089862"
    url "https://releases.mondoo.com/cnquery/9.2.0/cnquery_9.2.0_darwin_amd64.tar.gz"
  else
    sha256 "051e84571017fe97362c314a967787dce20f7b0f533f490dc05525add7bb7d04"
    url "https://releases.mondoo.com/cnquery/9.2.0/cnquery_9.2.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

