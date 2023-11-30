
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "9.9.2"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "fc48ae8a3252b01ef1d94bef4bb7e3b4d385c6be75019c3ea725489d31105ca0"
    url "https://releases.mondoo.com/cnspec/9.9.2/cnspec_9.9.2_darwin_amd64.tar.gz"
  else
    sha256 "d935820705275ca3f9c602b2d5c0b04930c3cefb8097bb631446fe87fddba70e"
    url "https://releases.mondoo.com/cnspec/9.9.2/cnspec_9.9.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

