
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.35.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "a23db337c5cf28091695097c5b8eb2288dbbf408b8410264d33d381ad2751a79"
    url "https://releases.mondoo.com/cnspec/11.35.0/cnspec_11.35.0_darwin_amd64.tar.gz"
  else
    sha256 "fe700e8c0b4e185d0e5d97370fd143d473d89019b7c39156d383742501e2b860"
    url "https://releases.mondoo.com/cnspec/11.35.0/cnspec_11.35.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

