
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "9.9.4"
  

  if Hardware::CPU.intel?
    sha256 "cbd7d48daf8159c894f79a4be651ae01028a9290c3d634f242a56c5c571598b1"
    url "https://releases.mondoo.com/cnquery/9.9.4/cnquery_9.9.4_darwin_amd64.tar.gz"
  else
    sha256 "4bfbd28701c2aa635910c7711c7659acf57d1c6be222e526b905a9ee406e1576"
    url "https://releases.mondoo.com/cnquery/9.9.4/cnquery_9.9.4_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

