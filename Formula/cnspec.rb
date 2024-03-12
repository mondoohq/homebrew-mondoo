
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "10.7.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "75a8002ce1655ab40c4155fea26020f30e131b8a4329453d77d6150b990568bf"
    url "https://releases.mondoo.com/cnspec/10.7.0/cnspec_10.7.0_darwin_amd64.tar.gz"
  else
    sha256 "1299c95a33af28839af9258988032ecc180c88a221ae39abd5ef0df4ef84cb71"
    url "https://releases.mondoo.com/cnspec/10.7.0/cnspec_10.7.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

