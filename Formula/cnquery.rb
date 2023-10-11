
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "9.0.3"
  

  if Hardware::CPU.intel?
    sha256 "362c2d83828ff172bda1b6ca5fcd1f3e3451f86f1ec6d4bf2560ce62e1a7adf1"
    url "https://releases.mondoo.com/cnquery/9.0.3/cnquery_9.0.3_darwin_amd64.tar.gz"
  else
    sha256 "3a258fa12a8595fccafd414acaff9747ebc7d0ffa963253623c81248580e1a85"
    url "https://releases.mondoo.com/cnquery/9.0.3/cnquery_9.0.3_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

