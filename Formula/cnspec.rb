
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "12.8.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "4a88751182af5b900280ca904bf554489085e58ed546532e8c7c0b88c6f38121"
    url "https://releases.mondoo.com/cnspec/12.8.0/cnspec_12.8.0_darwin_amd64.tar.gz"
  else
    sha256 "ee9a2da2d3aca8acba13bbd5e963430f207a12c4c56acf7eb73bfb5ea5ab61f3"
    url "https://releases.mondoo.com/cnspec/12.8.0/cnspec_12.8.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

