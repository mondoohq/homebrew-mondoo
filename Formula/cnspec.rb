
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "10.3.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "f9190c8db1f6d2e63f4bb108a5e12e515c1838192d8a3295af7d1f9c8978d88c"
    url "https://releases.mondoo.com/cnspec/10.3.0/cnspec_10.3.0_darwin_amd64.tar.gz"
  else
    sha256 "1d2f4837eb60f2e6d2f98664bb05bb7a1e2219ae8906199f239197387a34c68c"
    url "https://releases.mondoo.com/cnspec/10.3.0/cnspec_10.3.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

