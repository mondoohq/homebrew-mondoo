
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.7.0"
  

  if Hardware::CPU.intel?
    sha256 "a3bc72ed7703a1cef47d4b8dc1465a8e9f79a81f90d0ea3f2063bd2e520895f5"
    url "https://releases.mondoo.com/cnquery/11.7.0/cnquery_11.7.0_darwin_amd64.tar.gz"
  else
    sha256 "c2a62fc109cfdd15b908610df77f699d420898e50bc32cec4b293ab32f2e28eb"
    url "https://releases.mondoo.com/cnquery/11.7.0/cnquery_11.7.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

