
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.30.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "c87617f8a490825ca7ca0c3fcdd436ad5ea6a3c3246788db87bd451b35beaeea"
    url "https://releases.mondoo.com/cnspec/11.30.0/cnspec_11.30.0_darwin_amd64.tar.gz"
  else
    sha256 "365eb62e4b7d60db0a223bc5b26e04d9c01bed0bcd7f7d734036346c6718e26b"
    url "https://releases.mondoo.com/cnspec/11.30.0/cnspec_11.30.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

