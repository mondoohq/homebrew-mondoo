
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.57.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "c9bc07dd30d3b313fc5ba69d9bc7104a518c23fac4299525bfa7a91467d739be"
    url "https://releases.mondoo.com/cnspec/11.57.0/cnspec_11.57.0_darwin_amd64.tar.gz"
  else
    sha256 "88e814c8435460b87ad2034708c89ea66ab0ec945bb49df22765a0bda6a40f1e"
    url "https://releases.mondoo.com/cnspec/11.57.0/cnspec_11.57.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

