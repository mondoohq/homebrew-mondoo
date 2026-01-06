
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "12.17.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "96dc1f272268c06f9e26abb74cd7cbaf809f64a5b35bf90377f522f3541b5335"
    url "https://releases.mondoo.com/cnspec/12.17.0/cnspec_12.17.0_darwin_amd64.tar.gz"
  else
    sha256 "76add7e4394a160b0a8e56793b6beb2bd73f6d00b98a2b5d08c5bc5f316b35c8"
    url "https://releases.mondoo.com/cnspec/12.17.0/cnspec_12.17.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

