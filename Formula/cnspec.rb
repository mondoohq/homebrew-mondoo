
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.4.1"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "977d33444ff6be2dc5a138bd377f7a3553a569e8ae91e2f8337d270c356eaa4a"
    url "https://releases.mondoo.com/cnspec/11.4.1/cnspec_11.4.1_darwin_amd64.tar.gz"
  else
    sha256 "3b5d3857865d7723c893d52460876193bbef3b09a79390f401cc515068ce94eb"
    url "https://releases.mondoo.com/cnspec/11.4.1/cnspec_11.4.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

