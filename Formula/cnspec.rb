
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "12.23.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "98c0adfd2f23173aed4c7bd0152085bd6fb4bdc37f3440a78aaf6582f5de6db1"
    url "https://releases.mondoo.com/cnspec/12.23.0/cnspec_12.23.0_darwin_amd64.tar.gz"
  else
    sha256 "3930093a9ae42ab1cda917bd045834b8d66f47abf4bc802015ba4638f416f24c"
    url "https://releases.mondoo.com/cnspec/12.23.0/cnspec_12.23.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

