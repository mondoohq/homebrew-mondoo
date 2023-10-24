
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "9.3.2"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "5ab3443d3e36d3d19ef0bf866bb5be2d567a5a86f24eac267429063fa8fe9963"
    url "https://releases.mondoo.com/cnspec/9.3.2/cnspec_9.3.2_darwin_amd64.tar.gz"
  else
    sha256 "4c8cf63bffd48e1646b0b7ed61e4a7240aff1af268af731b3a4796c368bb177c"
    url "https://releases.mondoo.com/cnspec/9.3.2/cnspec_9.3.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

