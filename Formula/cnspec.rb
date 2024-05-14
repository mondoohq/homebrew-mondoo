
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.4.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "82d4d9007edd7f5d81d68eec4c66003e892f6f6b874e5d5992d3936c7ef14c8d"
    url "https://releases.mondoo.com/cnspec/11.4.0/cnspec_11.4.0_darwin_amd64.tar.gz"
  else
    sha256 "f2761d1e129238e87a39f6f9041d9a70046fd90d3e78e5a6ddcd1dc2a20f3aa3"
    url "https://releases.mondoo.com/cnspec/11.4.0/cnspec_11.4.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

