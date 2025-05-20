
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.55.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "157bc792e2e6a599223c3ee25545b96ee1fcbd5e6563ca0ac66f0ea9c2d24100"
    url "https://releases.mondoo.com/cnspec/11.55.0/cnspec_11.55.0_darwin_amd64.tar.gz"
  else
    sha256 "2c652958777b6b9ee78b691b87fe5fafac700902e431ed49681506809f1fac1c"
    url "https://releases.mondoo.com/cnspec/11.55.0/cnspec_11.55.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

