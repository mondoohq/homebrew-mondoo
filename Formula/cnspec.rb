
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.54.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "1da9d69ee237001661de0aa105472057a551de060ee244e0e9fd9b6df9e2d6d1"
    url "https://releases.mondoo.com/cnspec/11.54.0/cnspec_11.54.0_darwin_amd64.tar.gz"
  else
    sha256 "1db08438c5e382a94262c32f8c9b1cfc1cbae96b89107040a9d85ca7ace2b6f4"
    url "https://releases.mondoo.com/cnspec/11.54.0/cnspec_11.54.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

