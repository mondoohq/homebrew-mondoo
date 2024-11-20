
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.31.1"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "35b772a851b4944b6ee0021695d5955950323ffc6c8e0431d3acf904a1d06e15"
    url "https://releases.mondoo.com/cnspec/11.31.1/cnspec_11.31.1_darwin_amd64.tar.gz"
  else
    sha256 "36df3b98fb4f153186bc0082551b5c9ab6d8fde576056ac758bcbe0d7a34e3c3"
    url "https://releases.mondoo.com/cnspec/11.31.1/cnspec_11.31.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

