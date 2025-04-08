
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.49.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "183ea51dd165d2cef3922060a86c578ae4db6aa9fcc04dde99d40389f458bff4"
    url "https://releases.mondoo.com/cnspec/11.49.0/cnspec_11.49.0_darwin_amd64.tar.gz"
  else
    sha256 "f503d4d1b8cee3e4e5f8d23d8c0f14df40422728e1fbf1bc88a0b14a73bc9dc6"
    url "https://releases.mondoo.com/cnspec/11.49.0/cnspec_11.49.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

