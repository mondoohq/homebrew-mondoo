
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.23.2"
  

  if Hardware::CPU.intel?
    sha256 "a9b7491331d5bb764c887ec64a80ea6a87ef06136a10eb3ff60bd5392687bed2"
    url "https://releases.mondoo.com/cnquery/11.23.2/cnquery_11.23.2_darwin_amd64.tar.gz"
  else
    sha256 "f12011c422e9224d8c70b6686a0c82f866c7d7a9483fb5d84e9b613463f70308"
    url "https://releases.mondoo.com/cnquery/11.23.2/cnquery_11.23.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

