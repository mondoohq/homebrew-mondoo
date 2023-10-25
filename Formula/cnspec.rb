
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "9.3.3"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "82d306bcf99b82a383db87ae77f50b6239f0d1bf7a7fdfa1482f8c15838659ac"
    url "https://releases.mondoo.com/cnspec/9.3.3/cnspec_9.3.3_darwin_amd64.tar.gz"
  else
    sha256 "15cdf57cd6ec6e8af73977deea0eae52e609da703d5a5dd510e557bd939eb5ef"
    url "https://releases.mondoo.com/cnspec/9.3.3/cnspec_9.3.3_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

