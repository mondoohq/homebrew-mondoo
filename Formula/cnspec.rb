
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "9.12.3"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "114781b5e7ebbf20f4a04ae55f020ccca42db4d02fe1363c06236672d342685b"
    url "https://releases.mondoo.com/cnspec/9.12.3/cnspec_9.12.3_darwin_amd64.tar.gz"
  else
    sha256 "772d22f7ff11d4b4624e4abb103b5e2f07d4171180315323cf311a5b38dc1655"
    url "https://releases.mondoo.com/cnspec/9.12.3/cnspec_9.12.3_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

