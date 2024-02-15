
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "10.3.1"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "7e94f8da45e2cf96720b70a914dd713f1b84e947e608c77fa226cecc9b7aa1c5"
    url "https://releases.mondoo.com/cnspec/10.3.1/cnspec_10.3.1_darwin_amd64.tar.gz"
  else
    sha256 "92e882bcba793e8545a5872c55d486a9850f3113c490d1f5d7ded857c8d5b04b"
    url "https://releases.mondoo.com/cnspec/10.3.1/cnspec_10.3.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

