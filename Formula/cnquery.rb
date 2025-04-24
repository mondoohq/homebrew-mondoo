
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.51.2"
  

  if Hardware::CPU.intel?
    sha256 "5bdac0dfd6755065a81e4f754e6e25d96ef88d42c438640124c5a759f6222026"
    url "https://releases.mondoo.com/cnquery/11.51.2/cnquery_11.51.2_darwin_amd64.tar.gz"
  else
    sha256 "37f0ced05f581a499b7e1a70bbf08f4698e472c66ecc907c04c5c6a8cfa33450"
    url "https://releases.mondoo.com/cnquery/11.51.2/cnquery_11.51.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

