
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.33.1"
  

  if Hardware::CPU.intel?
    sha256 "abbcc10078144b06c452fa5611aa6d673351a53eb1a9aee094bae8030b5f0113"
    url "https://releases.mondoo.com/cnquery/11.33.1/cnquery_11.33.1_darwin_amd64.tar.gz"
  else
    sha256 "f1030fcfe403ce4c6e4d48ea16db103e59ddb3f87338e3d2ae87681187a4ffcd"
    url "https://releases.mondoo.com/cnquery/11.33.1/cnquery_11.33.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

