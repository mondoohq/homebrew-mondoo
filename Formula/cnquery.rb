
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "10.7.2"
  

  if Hardware::CPU.intel?
    sha256 "17f89012aab2cdb14eb51bbdcee4ffd20175eb60264ddac65f5156846778a6d9"
    url "https://releases.mondoo.com/cnquery/10.7.2/cnquery_10.7.2_darwin_amd64.tar.gz"
  else
    sha256 "03a6ce783dbc2c565d8a89c67c5bbc4b630e49f316aff5edd82fc784f7110c38"
    url "https://releases.mondoo.com/cnquery/10.7.2/cnquery_10.7.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

