
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.63.1"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "d31718391c812ec2bf87311f2dca936130a12846988fb28a25c2a03624341936"
    url "https://releases.mondoo.com/cnspec/11.63.1/cnspec_11.63.1_darwin_amd64.tar.gz"
  else
    sha256 "fdad550dd2fc579a9b9d0f248a0732ebf3e679dd6d379eff77a6be2a458d4c59"
    url "https://releases.mondoo.com/cnspec/11.63.1/cnspec_11.63.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

