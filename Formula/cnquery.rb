
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "10.3.0"
  

  if Hardware::CPU.intel?
    sha256 "1c4127c11edc9fd8a8b5f3b6b49253a8bf1d2968800ff52398ecd3f0d9f4a053"
    url "https://releases.mondoo.com/cnquery/10.3.0/cnquery_10.3.0_darwin_amd64.tar.gz"
  else
    sha256 "bdf6e5fbfc05464ac90c802a1b0bd0d7dab72005e6b52860379caad41e69402c"
    url "https://releases.mondoo.com/cnquery/10.3.0/cnquery_10.3.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

