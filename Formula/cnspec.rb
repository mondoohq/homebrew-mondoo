
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "9.3.1"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "d1b566c5c7cf1d0b49190a2d08000f11b7dc01e7d6e71ced15c9c8242cd947f0"
    url "https://releases.mondoo.com/cnspec/9.3.1/cnspec_9.3.1_darwin_amd64.tar.gz"
  else
    sha256 "a931394c1d137ea6f73af55bd2228baa7be51afbe314aa1a2d4806a5562338ca"
    url "https://releases.mondoo.com/cnspec/9.3.1/cnspec_9.3.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

