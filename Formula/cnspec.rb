
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.52.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "9d5c240fec2ca15f53bee083444c73fbfa4fe6691b4d2ba0cee3cbe833624433"
    url "https://releases.mondoo.com/cnspec/11.52.0/cnspec_11.52.0_darwin_amd64.tar.gz"
  else
    sha256 "b59c14003ca63614b96257a734e342aa000d4e4bddce9e5c845c3996afb2ee99"
    url "https://releases.mondoo.com/cnspec/11.52.0/cnspec_11.52.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

