
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "10.3.1"
  

  if Hardware::CPU.intel?
    sha256 "a3a0f53a8325f008b48f18368760658e8f694df69fa72d51c29997bfc4178d6b"
    url "https://releases.mondoo.com/cnquery/10.3.1/cnquery_10.3.1_darwin_amd64.tar.gz"
  else
    sha256 "5f086a7d2f920fade703fcb884a1fdb92bef46d215d311e175779b093a1ed006"
    url "https://releases.mondoo.com/cnquery/10.3.1/cnquery_10.3.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

