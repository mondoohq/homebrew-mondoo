
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "12.23.1"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "206cfcdd4320c7e5aeceeceec9ae904e2a808b3d74d0135962484367cbf6a63b"
    url "https://releases.mondoo.com/cnspec/12.23.1/cnspec_12.23.1_darwin_amd64.tar.gz"
  else
    sha256 "cf8c3ec74743ab611c34586214e3b960821c7a523289d298209e1efe687c2423"
    url "https://releases.mondoo.com/cnspec/12.23.1/cnspec_12.23.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

