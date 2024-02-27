
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "10.5.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "096a6bab5ea6e067a16864510a44cdb2a8b6a842c807540e578f30a6f1c74257"
    url "https://releases.mondoo.com/cnspec/10.5.0/cnspec_10.5.0_darwin_amd64.tar.gz"
  else
    sha256 "589f5e000709c4d0bfec083d47f3760b7d40f4076da4a9167ced47dc6bd07175"
    url "https://releases.mondoo.com/cnspec/10.5.0/cnspec_10.5.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

