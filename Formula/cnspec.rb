
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "12.20.1"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "438641520eb0c92f23a49efb02d988143694a45f93784a0774e32eeac77adccf"
    url "https://releases.mondoo.com/cnspec/12.20.1/cnspec_12.20.1_darwin_amd64.tar.gz"
  else
    sha256 "b12be730830e6658a64cfcdfa63d8ddb7818743b41e2be4af877aa13199e9b92"
    url "https://releases.mondoo.com/cnspec/12.20.1/cnspec_12.20.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

