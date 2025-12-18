
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "12.14.2"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "3b51229c5382ed7e005d7662ee01f153642bcf03f8d011f95546673bfde8978d"
    url "https://releases.mondoo.com/cnspec/12.14.2/cnspec_12.14.2_darwin_amd64.tar.gz"
  else
    sha256 "7c9bf1592d425db0c58c2c8ce3de61e33d77b593d0f6d331da05c66d329fbf4b"
    url "https://releases.mondoo.com/cnspec/12.14.2/cnspec_12.14.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

