
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.64.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "0baddbe0f4b7607aa9b3f229b6f23c228534ed10a1303286ec733ca1a26156fa"
    url "https://releases.mondoo.com/cnspec/11.64.0/cnspec_11.64.0_darwin_amd64.tar.gz"
  else
    sha256 "2dc5da0ff58e415ec6c25c3942caed0ede3097d7ac08594056bdc52f038732c4"
    url "https://releases.mondoo.com/cnspec/11.64.0/cnspec_11.64.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

