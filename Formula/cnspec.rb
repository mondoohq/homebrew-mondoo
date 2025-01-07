
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.36.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "52359bffe68e1ecb7a954fcead74ded54438d8528800e4bd62c45c7097b6e1bc"
    url "https://releases.mondoo.com/cnspec/11.36.0/cnspec_11.36.0_darwin_amd64.tar.gz"
  else
    sha256 "f163bd8c6882cf5f73512e6022f0765d817eb88addec3520beba9f489e157bd0"
    url "https://releases.mondoo.com/cnspec/11.36.0/cnspec_11.36.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

