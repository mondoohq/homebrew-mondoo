
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.30.2"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "5b86788ee3bfea03fba286296e2321cece20d501e0a6e805c2a70be7699009d7"
    url "https://releases.mondoo.com/cnspec/11.30.2/cnspec_11.30.2_darwin_amd64.tar.gz"
  else
    sha256 "1d0b3244cbf6b1e7e0ec5dfcf38a9b527ebf2ece6f38a7d3b27a5b04352a5b50"
    url "https://releases.mondoo.com/cnspec/11.30.2/cnspec_11.30.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

