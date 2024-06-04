
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.7.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "ed35080c30c417c2af2dbeff16db9f2ec2ecdae298c889df8657d2c003fface8"
    url "https://releases.mondoo.com/cnspec/11.7.0/cnspec_11.7.0_darwin_amd64.tar.gz"
  else
    sha256 "a36edea6ef0376f9389d6ab3f2ade07bae4a2a8725827dc8f7d6d07dfa1e601d"
    url "https://releases.mondoo.com/cnspec/11.7.0/cnspec_11.7.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

