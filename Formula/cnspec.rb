
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.62.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "f5c00a7f36a1d738e3555536a876f8d5dde191c9120c3f5541850d9331edc9b3"
    url "https://releases.mondoo.com/cnspec/11.62.0/cnspec_11.62.0_darwin_amd64.tar.gz"
  else
    sha256 "a184ef72b19d7998e27c6d999b33e71c634f471c15a196dfb833860ca80995f3"
    url "https://releases.mondoo.com/cnspec/11.62.0/cnspec_11.62.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

