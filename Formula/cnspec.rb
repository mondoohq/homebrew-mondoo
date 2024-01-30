
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "10.1.2"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "468796d40e5766c942785b29a2a3bbd2fe13fa51c38c134fc81a7b840f96d2e6"
    url "https://releases.mondoo.com/cnspec/10.1.2/cnspec_10.1.2_darwin_amd64.tar.gz"
  else
    sha256 "958b83c1ede8d3a48cadc69320b5bd79c024edb8a636ef271a6a686a0f7af125"
    url "https://releases.mondoo.com/cnspec/10.1.2/cnspec_10.1.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

