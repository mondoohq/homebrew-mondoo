
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "12.6.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "1430328113c05416ec1caf9f4ac0d0c6604773c72d50af54f225d1a3838b6e15"
    url "https://releases.mondoo.com/cnspec/12.6.0/cnspec_12.6.0_darwin_amd64.tar.gz"
  else
    sha256 "f65dc8a19437b443cfc87560b0644e131f169d10a48a67506bd5d74bb2c329a3"
    url "https://releases.mondoo.com/cnspec/12.6.0/cnspec_12.6.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

