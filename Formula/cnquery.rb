
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "9.9.3"
  

  if Hardware::CPU.intel?
    sha256 "b3b17fd55f4df5664fd66e473f42d39b77b6a2778db2635a86ab260885ce3295"
    url "https://releases.mondoo.com/cnquery/9.9.3/cnquery_9.9.3_darwin_amd64.tar.gz"
  else
    sha256 "8e16f14b665a5774506b856ecc5e5a11ae11e577c7204a51840108fb1d586cdc"
    url "https://releases.mondoo.com/cnquery/9.9.3/cnquery_9.9.3_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

