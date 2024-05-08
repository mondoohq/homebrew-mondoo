
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.3.1"
  

  if Hardware::CPU.intel?
    sha256 "e4f615949172116e59f2039e750f934884ed14921f86d3dc94c8fb24a871e957"
    url "https://releases.mondoo.com/cnquery/11.3.1/cnquery_11.3.1_darwin_amd64.tar.gz"
  else
    sha256 "2024266a680d231d7693481833a8c84d3ecd9b788e356cc515c26bf484754201"
    url "https://releases.mondoo.com/cnquery/11.3.1/cnquery_11.3.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

