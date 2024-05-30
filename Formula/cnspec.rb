
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.6.2"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "5937ca799e2e5ac98465800677fa24c0510bdd7af515fc140b1f0c216a25240d"
    url "https://releases.mondoo.com/cnspec/11.6.2/cnspec_11.6.2_darwin_amd64.tar.gz"
  else
    sha256 "7224eeebb51d6744dda553b7dd37e22d53fb03ddce3c5d1b278305f318731971"
    url "https://releases.mondoo.com/cnspec/11.6.2/cnspec_11.6.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

