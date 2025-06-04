
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.57.1"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "45bc20e976b4afe6722955b2cfb98e2363ec89c9e0ba65864d87fae299d067bf"
    url "https://releases.mondoo.com/cnspec/11.57.1/cnspec_11.57.1_darwin_amd64.tar.gz"
  else
    sha256 "ed6e296cb774cbc1b015008e1e40053cf30d1e2e84d0cd2a5689cee7494eea86"
    url "https://releases.mondoo.com/cnspec/11.57.1/cnspec_11.57.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

