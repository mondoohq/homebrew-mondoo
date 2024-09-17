
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.22.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "8a7fa750101424e34373218d6397f8d6fe83b47c2672c41c816811abc6ddd4cd"
    url "https://releases.mondoo.com/cnspec/11.22.0/cnspec_11.22.0_darwin_amd64.tar.gz"
  else
    sha256 "ecb9ec92042e2cd883c9726a2d51a764ccc617b1068d3c31966299d508c9374a"
    url "https://releases.mondoo.com/cnspec/11.22.0/cnspec_11.22.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

