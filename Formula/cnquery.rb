
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "10.3.3"
  

  if Hardware::CPU.intel?
    sha256 "c3ebdc8a02227feb27b31b4cc93ccec0f44906c1b219aec6001222352a4416e2"
    url "https://releases.mondoo.com/cnquery/10.3.3/cnquery_10.3.3_darwin_amd64.tar.gz"
  else
    sha256 "d8821482841faf96db035b556a7934a7215f582719e71f74f04f6d00afaf36a0"
    url "https://releases.mondoo.com/cnquery/10.3.3/cnquery_10.3.3_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

