
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "12.2.1"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "8775e7cb02cd1cbb6ca66f5c9c814b1d5258e2a8300e51a0bef7c6b74fc2ea1b"
    url "https://releases.mondoo.com/cnspec/12.2.1/cnspec_12.2.1_darwin_amd64.tar.gz"
  else
    sha256 "ccddee51b56f9333e985897b170c12c3ba23949941bdb1d23a11f90b2a8028a7"
    url "https://releases.mondoo.com/cnspec/12.2.1/cnspec_12.2.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

