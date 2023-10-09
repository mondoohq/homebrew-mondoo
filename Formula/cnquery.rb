
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "9.0.2"
  

  if Hardware::CPU.intel?
    sha256 "c4e7e0a80de152330a80853776445af07ca4127f12307bdf657d4f91ea017116"
    url "https://releases.mondoo.com/cnquery/9.0.2/cnquery_9.0.2_darwin_amd64.tar.gz"
  else
    sha256 "b728c305b2396294c3a9ad27d6f15ab798012df2eacf81bdea9c5de4a6be249f"
    url "https://releases.mondoo.com/cnquery/9.0.2/cnquery_9.0.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

