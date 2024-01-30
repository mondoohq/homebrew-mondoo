
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "10.1.1"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "c6ddc307f6881764507b85987fd7e312fe86ccefc15d6b814bd50ae82980e672"
    url "https://releases.mondoo.com/cnspec/10.1.1/cnspec_10.1.1_darwin_amd64.tar.gz"
  else
    sha256 "76e782f3e2daf34d64c8b5d908a45d2019e55b05108b2142ad2ac91763530c0b"
    url "https://releases.mondoo.com/cnspec/10.1.1/cnspec_10.1.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

