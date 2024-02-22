
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "10.4.1"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "83fe769c721888495f90999295c3ebc625731e85024e51742b8c0b9ad139ee8b"
    url "https://releases.mondoo.com/cnspec/10.4.1/cnspec_10.4.1_darwin_amd64.tar.gz"
  else
    sha256 "6a59cb11a45868580ef18a6d0ee3b2bbc4921b2c9b3cf302686db5b2e8bdbb9d"
    url "https://releases.mondoo.com/cnspec/10.4.1/cnspec_10.4.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

