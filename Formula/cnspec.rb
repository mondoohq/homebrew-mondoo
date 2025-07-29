
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.65.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "8ed97a7a02de1cf83e2d0d0987c2156922d2be785295a57427fb1df6adb60d8c"
    url "https://releases.mondoo.com/cnspec/11.65.0/cnspec_11.65.0_darwin_amd64.tar.gz"
  else
    sha256 "5738a7314fb5252895d3ced51ce47174b5106a85c0d126281436e563e877b734"
    url "https://releases.mondoo.com/cnspec/11.65.0/cnspec_11.65.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

