
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "10.6.1"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "f81f0a9073b29351018b0e78e3cb8a51d942f5bf8b381e40e49c7b26d38bc8f9"
    url "https://releases.mondoo.com/cnspec/10.6.1/cnspec_10.6.1_darwin_amd64.tar.gz"
  else
    sha256 "2a1612e6be37282154497034a4995be43b5401375142c16dd5244a7fce5ba719"
    url "https://releases.mondoo.com/cnspec/10.6.1/cnspec_10.6.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

