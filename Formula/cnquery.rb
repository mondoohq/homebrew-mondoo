
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.30.0"
  

  if Hardware::CPU.intel?
    sha256 "0a8379aacc33492ee9567443a048a7e17c81a8643e3c097ca710f3a78dfc71be"
    url "https://releases.mondoo.com/cnquery/11.30.0/cnquery_11.30.0_darwin_amd64.tar.gz"
  else
    sha256 "183eede31a544f58d14225668733e475c2b1f2c98b0fa10494ff8a0af6b5115c"
    url "https://releases.mondoo.com/cnquery/11.30.0/cnquery_11.30.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

