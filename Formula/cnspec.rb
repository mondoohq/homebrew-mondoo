
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.46.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "3bcfd1978a19a5b0dd7b2c0501c2678b771180f0920f5611e43146ab2f32cd30"
    url "https://releases.mondoo.com/cnspec/11.46.0/cnspec_11.46.0_darwin_amd64.tar.gz"
  else
    sha256 "9a0ea904bbc691b876a1ece53ea3cf4bd4c8ce72a0737923a92b869f86ca2481"
    url "https://releases.mondoo.com/cnspec/11.46.0/cnspec_11.46.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

