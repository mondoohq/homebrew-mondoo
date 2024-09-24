
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.23.0"
  

  if Hardware::CPU.intel?
    sha256 "07c7a001a1b6198f7fe184db082faa4dcc9556cee2eee1961cc6c1ae90c815c8"
    url "https://releases.mondoo.com/cnquery/11.23.0/cnquery_11.23.0_darwin_amd64.tar.gz"
  else
    sha256 "e7b8f5adb3c6bde1174ff1ab4e516f3c77d8b23cdc0fbf42fea9e80d3c5c096c"
    url "https://releases.mondoo.com/cnquery/11.23.0/cnquery_11.23.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

