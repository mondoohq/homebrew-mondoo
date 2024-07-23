
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.14.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "0b5e4b37c01f29951ee3934cb64e371bf001292a1e1bb1d3b6cd6b852053d912"
    url "https://releases.mondoo.com/cnspec/11.14.0/cnspec_11.14.0_darwin_amd64.tar.gz"
  else
    sha256 "179fbf9448732d4dae639b2651c4ee35a19533243f4b132f82d36b831d10d7e4"
    url "https://releases.mondoo.com/cnspec/11.14.0/cnspec_11.14.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

