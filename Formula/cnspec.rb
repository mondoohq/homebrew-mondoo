
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "10.11.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "235093c262fd11f8dbfdca1a8dabbb35ab4f98eb390d0dec45690cfc203c4337"
    url "https://releases.mondoo.com/cnspec/10.11.0/cnspec_10.11.0_darwin_amd64.tar.gz"
  else
    sha256 "4fd7cd7b3a51cc547591ae342d34feac24917db9923dea633d63a4b1688b7a9b"
    url "https://releases.mondoo.com/cnspec/10.11.0/cnspec_10.11.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

