
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "12.14.1"
  

  if Hardware::CPU.intel?
    sha256 "b60eb30bf73ee3484d8d8f85021f6eb48c37d3da56a1db07a3a1a7663ffc732d"
    url "https://releases.mondoo.com/cnquery/12.14.1/cnquery_12.14.1_darwin_amd64.tar.gz"
  else
    sha256 "726b906917308417406445192706670c21c9ca88ff4f75fff1647db924dd1b40"
    url "https://releases.mondoo.com/cnquery/12.14.1/cnquery_12.14.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

