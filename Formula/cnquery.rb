
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "12.23.1"
  

  if Hardware::CPU.intel?
    sha256 "41f044c87ded7a91622467c0ceb1bdacdaf7537d1f8339c38e4ff230dafb9a9b"
    url "https://releases.mondoo.com/cnquery/12.23.1/cnquery_12.23.1_darwin_amd64.tar.gz"
  else
    sha256 "c8dc6454c6b064e75bdeaa9e19ca362cf9ecb8c63ee46523aa4c136770c05717"
    url "https://releases.mondoo.com/cnquery/12.23.1/cnquery_12.23.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

