
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.36.1"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "c02e818dc7b0a2c437fdad0c23bcd254a8e8673235db4b80eade824635190266"
    url "https://releases.mondoo.com/cnspec/11.36.1/cnspec_11.36.1_darwin_amd64.tar.gz"
  else
    sha256 "734b63d65f9a4c2afbb480c06d2d3fc6862dd7e5be3f9b3b6635f3482c8e778b"
    url "https://releases.mondoo.com/cnspec/11.36.1/cnspec_11.36.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

