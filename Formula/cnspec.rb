
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.10.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "89c440d0a552f7e8a5926bb905723f163abde28aa7c997dfbe9580cee9dd41e0"
    url "https://releases.mondoo.com/cnspec/11.10.0/cnspec_11.10.0_darwin_amd64.tar.gz"
  else
    sha256 "ea00885f7a57c8025c0a33dc493bcf5474584db4b8180b0ae8b42c6d0f6abe3d"
    url "https://releases.mondoo.com/cnspec/11.10.0/cnspec_11.10.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

