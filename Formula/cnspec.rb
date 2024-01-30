
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "10.1.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "f9b0bdbbe6e662299c037aa7408894e6b54da65669c082f77c7629acee2d6616"
    url "https://releases.mondoo.com/cnspec/10.1.0/cnspec_10.1.0_darwin_amd64.tar.gz"
  else
    sha256 "0fc284af541e4db859018edaf5db50f64781a387989bbc484ced24ee4c40ae09"
    url "https://releases.mondoo.com/cnspec/10.1.0/cnspec_10.1.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

