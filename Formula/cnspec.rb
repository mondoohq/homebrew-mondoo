
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "10.8.1"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "b1441f4e1bcb1b9d89c4fb9d7e48f45dce505dadf227b390ba5897abaf8e6f41"
    url "https://releases.mondoo.com/cnspec/10.8.1/cnspec_10.8.1_darwin_amd64.tar.gz"
  else
    sha256 "e52d2aa57d1dfdd9a229fc7efc9eae6902b7ad7539f3b5479aa863eaa239bf67"
    url "https://releases.mondoo.com/cnspec/10.8.1/cnspec_10.8.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

