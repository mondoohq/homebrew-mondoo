
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.37.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "9e5e1c4223f73ae4110e2b125130b98da84edba7b0cdc9955fe80e01932e3d85"
    url "https://releases.mondoo.com/cnspec/11.37.0/cnspec_11.37.0_darwin_amd64.tar.gz"
  else
    sha256 "afaa3eca33b5f029172fa18260bee4ca638cd7a515837ef8cdc53bf29e67d6bc"
    url "https://releases.mondoo.com/cnspec/11.37.0/cnspec_11.37.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

