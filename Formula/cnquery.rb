
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.10.0"
  

  if Hardware::CPU.intel?
    sha256 "86c27affb95466a055542be7f0e9f1c7574d76d78981782f39a70f15021d487d"
    url "https://releases.mondoo.com/cnquery/11.10.0/cnquery_11.10.0_darwin_amd64.tar.gz"
  else
    sha256 "3ee9bb9e4e2630322bc60a108010c4c63d18c234b285276988d6172db15f9c29"
    url "https://releases.mondoo.com/cnquery/11.10.0/cnquery_11.10.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

