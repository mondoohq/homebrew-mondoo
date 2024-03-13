
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "10.7.1"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "de0b7a13027fed2a8f8e10bd0b96cbe2ee8a0003924d6145a12724f086ce7917"
    url "https://releases.mondoo.com/cnspec/10.7.1/cnspec_10.7.1_darwin_amd64.tar.gz"
  else
    sha256 "106ee74712bd0db83f6e4d0da30af47d415194694ff94dd5ec38db8d23551a2b"
    url "https://releases.mondoo.com/cnspec/10.7.1/cnspec_10.7.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

