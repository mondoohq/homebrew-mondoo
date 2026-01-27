
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "12.20.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "ab939b8db6e525fe7e3645f168726225e309505bdbd5924447f9ad1c8fd94460"
    url "https://releases.mondoo.com/cnspec/12.20.0/cnspec_12.20.0_darwin_amd64.tar.gz"
  else
    sha256 "af8a8ad34b012e996bd207370f9b6d0392ad4fae462af468737cb5f4cae8b1a8"
    url "https://releases.mondoo.com/cnspec/12.20.0/cnspec_12.20.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

