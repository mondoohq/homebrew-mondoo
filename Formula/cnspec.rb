
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "12.18.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "56194ab726f85174e9373b859e38a1b5cfeed958e0cb9a324034c55a39ad5694"
    url "https://releases.mondoo.com/cnspec/12.18.0/cnspec_12.18.0_darwin_amd64.tar.gz"
  else
    sha256 "669078d636529673f8afa1d00820baee76f84d937e2e1815e4d8873216e6ce38"
    url "https://releases.mondoo.com/cnspec/12.18.0/cnspec_12.18.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

