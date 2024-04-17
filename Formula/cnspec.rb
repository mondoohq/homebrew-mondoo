
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.0.1"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "26a2f399d3bec61e372b34773196a80de6447dac72830ee6d171696daca5bff6"
    url "https://releases.mondoo.com/cnspec/11.0.1/cnspec_11.0.1_darwin_amd64.tar.gz"
  else
    sha256 "c4b833411eadcd90583055087f54ba46ad80bb9da348c6ecbd231f96bce10120"
    url "https://releases.mondoo.com/cnspec/11.0.1/cnspec_11.0.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

