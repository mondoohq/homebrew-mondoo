
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.14.0"
  

  if Hardware::CPU.intel?
    sha256 "916b7cc4952435e7dcddcf4aa55c6ad418cc3b0fbcd149d05f39920b8a8c7855"
    url "https://releases.mondoo.com/cnquery/11.14.0/cnquery_11.14.0_darwin_amd64.tar.gz"
  else
    sha256 "b6e62bc07fedd30dff1bfb44c271baccf2d463e3054986ba20ce218143d3284e"
    url "https://releases.mondoo.com/cnquery/11.14.0/cnquery_11.14.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

