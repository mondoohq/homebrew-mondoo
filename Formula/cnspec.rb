
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "12.1.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "e9223b2c54e500fd1fcea699a8a454a0ff33211b038cc2a3f73be07e963ae95e"
    url "https://releases.mondoo.com/cnspec/12.1.0/cnspec_12.1.0_darwin_amd64.tar.gz"
  else
    sha256 "9744e56645600b75a2490f92d54cf4a88a6145e22297bfae77d556e5f3101cae"
    url "https://releases.mondoo.com/cnspec/12.1.0/cnspec_12.1.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

