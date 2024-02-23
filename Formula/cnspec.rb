
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "10.4.2"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "9ac270c246cc93841c1fc294c8e2af4e10ec3a85c68d6e07fb707117053e94b2"
    url "https://releases.mondoo.com/cnspec/10.4.2/cnspec_10.4.2_darwin_amd64.tar.gz"
  else
    sha256 "0f1c3a9f9e7e00b88c64ffc93e0b6a59828bda372dc393449a99e71c4403293d"
    url "https://releases.mondoo.com/cnspec/10.4.2/cnspec_10.4.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

