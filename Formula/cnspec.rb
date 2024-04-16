
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "10.12.1"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "4de2f46f05cff1064834135c4b3ff38408881beb2a036783a4f652f9d9a895af"
    url "https://releases.mondoo.com/cnspec/10.12.1/cnspec_10.12.1_darwin_amd64.tar.gz"
  else
    sha256 "386a531a93e8c4b29631fecf0a876ed166d3bd5f30cc0bb9a250b3e5a23f72b9"
    url "https://releases.mondoo.com/cnspec/10.12.1/cnspec_10.12.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

