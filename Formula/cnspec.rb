
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "12.5.1"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "4f83ce579a934b88bc5de832301e9672e854645bdf98b108bc30b38e21944d84"
    url "https://releases.mondoo.com/cnspec/12.5.1/cnspec_12.5.1_darwin_amd64.tar.gz"
  else
    sha256 "e6d8c7ade7e11bcb252aa7fa7c152b4df902950834e40ae80f33f8f0994a8779"
    url "https://releases.mondoo.com/cnspec/12.5.1/cnspec_12.5.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

