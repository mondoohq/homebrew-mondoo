
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "13.0.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "b57d498cbb6965e936e858f6466006e29d1b8e82975ef27e660eb6dbca927e5e"
    url "https://releases.mondoo.com/cnspec/13.0.0/cnspec_13.0.0_darwin_amd64.tar.gz"
  else
    sha256 "aea4e2f6d341c748a04f22d048fb51e9c897568e4f640da022ffa3a4cd9a53f9"
    url "https://releases.mondoo.com/cnspec/13.0.0/cnspec_13.0.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

