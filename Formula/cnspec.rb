
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "9.9.1"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "62d7259606c96188a1741d0d40b854ae44294ce6e21f413e5f7ee4d937637778"
    url "https://releases.mondoo.com/cnspec/9.9.1/cnspec_9.9.1_darwin_amd64.tar.gz"
  else
    sha256 "38a855ae0f83aa62d54a9b9e47823434e168d93e80ac406cb6bd91ad7eff351b"
    url "https://releases.mondoo.com/cnspec/9.9.1/cnspec_9.9.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

