
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "12.6.0"
  

  if Hardware::CPU.intel?
    sha256 "9fb996500317e966790501e1f64efd3ee85b98a0ebbf174588114937bdd78d18"
    url "https://releases.mondoo.com/cnquery/12.6.0/cnquery_12.6.0_darwin_amd64.tar.gz"
  else
    sha256 "a262935e682be310bea98a66d5ff4c9acd1d49caf1cfd93269e5a5deca2c1661"
    url "https://releases.mondoo.com/cnquery/12.6.0/cnquery_12.6.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

