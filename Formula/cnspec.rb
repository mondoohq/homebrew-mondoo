
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.57.2"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "ca4279f31edb5bd1857ea1dba669025acd41799127ba488b4e2b79660e36b3d1"
    url "https://releases.mondoo.com/cnspec/11.57.2/cnspec_11.57.2_darwin_amd64.tar.gz"
  else
    sha256 "62484c8c3e173e1a33b501f0d29511b31e4bd472835b617fb6d193904bd88c41"
    url "https://releases.mondoo.com/cnspec/11.57.2/cnspec_11.57.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

