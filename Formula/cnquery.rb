
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "12.16.0"
  

  if Hardware::CPU.intel?
    sha256 "6787bc0d03c3905f5fcf6bda9b52e8a1acd11b700e44fd7954e14ffb21319ed4"
    url "https://releases.mondoo.com/cnquery/12.16.0/cnquery_12.16.0_darwin_amd64.tar.gz"
  else
    sha256 "1945ae37a1e11d0f51b9e92026c66f5047a25cba17de18764dc3184e9a7db8fc"
    url "https://releases.mondoo.com/cnquery/12.16.0/cnquery_12.16.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

