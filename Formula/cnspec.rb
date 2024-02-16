
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "10.3.3"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "6859a846f17085b6d494c3e6bf354ec36b46297a6b4d4e97d534fa37666c0a01"
    url "https://releases.mondoo.com/cnspec/10.3.3/cnspec_10.3.3_darwin_amd64.tar.gz"
  else
    sha256 "2bd1db75380c49759257bc0e578b427bf677eb7447eaa1a433344c9a75ef056b"
    url "https://releases.mondoo.com/cnspec/10.3.3/cnspec_10.3.3_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

