
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "9.7.1"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "2266d432abe8e2df3f1926eec7b3780b620945505649b2b4b77cec3884d47670"
    url "https://releases.mondoo.com/cnspec/9.7.1/cnspec_9.7.1_darwin_amd64.tar.gz"
  else
    sha256 "7bb8641a6e0dbd3e4af899f0676eed03c33349bb70445031830c3f6004ae1f22"
    url "https://releases.mondoo.com/cnspec/9.7.1/cnspec_9.7.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

