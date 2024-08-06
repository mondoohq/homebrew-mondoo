
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.16.0"
  

  if Hardware::CPU.intel?
    sha256 "7a75f92c7960ac11168054a7966413af6cc9773fec7543f40656dccd0c96bc08"
    url "https://releases.mondoo.com/cnquery/11.16.0/cnquery_11.16.0_darwin_amd64.tar.gz"
  else
    sha256 "285cc8a82d149107419f4407581da4cfd3ef13c29201cc8d6fa18e787720425e"
    url "https://releases.mondoo.com/cnquery/11.16.0/cnquery_11.16.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

