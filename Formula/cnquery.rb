
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "12.4.0"
  

  if Hardware::CPU.intel?
    sha256 "cc5260b23df290fc4934639c756d289d0527def3b411ce6560b92f452920ff5d"
    url "https://releases.mondoo.com/cnquery/12.4.0/cnquery_12.4.0_darwin_amd64.tar.gz"
  else
    sha256 "abad608650cabcbd2e5d6f0096882cf2a01b6413e0a2f6f9f817224202bed4db"
    url "https://releases.mondoo.com/cnquery/12.4.0/cnquery_12.4.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

