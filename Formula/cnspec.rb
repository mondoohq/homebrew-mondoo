
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.12.1"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "91b7e1910e1cb26d1438621e3acbd9098d0ed4109c87e332fe54640c93279e34"
    url "https://releases.mondoo.com/cnspec/11.12.1/cnspec_11.12.1_darwin_amd64.tar.gz"
  else
    sha256 "100a4c861e3ec284251189ff0dfe393b6decf5417d24f8ce56ee5fe232f2ecfb"
    url "https://releases.mondoo.com/cnspec/11.12.1/cnspec_11.12.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

