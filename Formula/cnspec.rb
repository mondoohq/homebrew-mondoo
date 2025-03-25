
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.47.1"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "ba46bbe06c8bf4934d5d2992a7bcc646065b66c40f1c2906d986609abc15c2ab"
    url "https://releases.mondoo.com/cnspec/11.47.1/cnspec_11.47.1_darwin_amd64.tar.gz"
  else
    sha256 "ca4a418ee354e1b74b87c6b91d8e586511d8ddeb6550040a7471a709eb8aea31"
    url "https://releases.mondoo.com/cnspec/11.47.1/cnspec_11.47.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

