
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "9.13.0"
  

  if Hardware::CPU.intel?
    sha256 "0ebcfebffe90f0ad0047179413971f2e4b065aa98791f97ac7d15d7a075575ce"
    url "https://releases.mondoo.com/cnquery/9.13.0/cnquery_9.13.0_darwin_amd64.tar.gz"
  else
    sha256 "8c20a2d1b2078850f81c5dfe98ab59f9f148e169fdfe7760446cbbf5a4b570ec"
    url "https://releases.mondoo.com/cnquery/9.13.0/cnquery_9.13.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

