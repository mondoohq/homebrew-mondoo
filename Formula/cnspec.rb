
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "10.1.6"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "b41dce1b4f1772c9d59a6eabddc28c3037315fb60ea22e5e14aa87e937fa67c7"
    url "https://releases.mondoo.com/cnspec/10.1.6/cnspec_10.1.6_darwin_amd64.tar.gz"
  else
    sha256 "8b2d88f110245c0c5d07b8f0f11799fc15963e1ace50763d7474649f616c900f"
    url "https://releases.mondoo.com/cnspec/10.1.6/cnspec_10.1.6_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

