
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "12.14.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "cccf007b662ae3d6e3915ba86282da4ad8a581f5071410a04d3360dbfc76a2a1"
    url "https://releases.mondoo.com/cnspec/12.14.0/cnspec_12.14.0_darwin_amd64.tar.gz"
  else
    sha256 "7e63d3e786c81211a976c6fd7902a0a9d541b0bd8c3a96367b6347078d17e062"
    url "https://releases.mondoo.com/cnspec/12.14.0/cnspec_12.14.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

