
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "9.2.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "002ce74134a64e5ef5b7da3c01386b4d73fc8147b039c8a364af28b9aa6d211d"
    url "https://releases.mondoo.com/cnspec/9.2.0/cnspec_9.2.0_darwin_amd64.tar.gz"
  else
    sha256 "9b8452370468fc09bb6a4f7a760f34bb45c5d436287bdc467182d4aa53c7f0c4"
    url "https://releases.mondoo.com/cnspec/9.2.0/cnspec_9.2.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

