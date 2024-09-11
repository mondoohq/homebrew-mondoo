
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.21.1"
  

  if Hardware::CPU.intel?
    sha256 "da180dc206056cb433f537371345958253856f8196966ed9ee9e907a33f47d62"
    url "https://releases.mondoo.com/cnquery/11.21.1/cnquery_11.21.1_darwin_amd64.tar.gz"
  else
    sha256 "7369948915e1978670d482d1abccff4f690e451bc2af3685585ea6fa27589cf8"
    url "https://releases.mondoo.com/cnquery/11.21.1/cnquery_11.21.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

