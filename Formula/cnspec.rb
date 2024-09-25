
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.23.1"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "b18f980d22c84f04b405d457b87a3d77e7695556aea88b3d049a9161592e27c8"
    url "https://releases.mondoo.com/cnspec/11.23.1/cnspec_11.23.1_darwin_amd64.tar.gz"
  else
    sha256 "43b26b62133a53735d1cb3666b28aa278108fa755c91f66a957f99a8c1883969"
    url "https://releases.mondoo.com/cnspec/11.23.1/cnspec_11.23.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

