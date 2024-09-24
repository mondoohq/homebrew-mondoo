
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.23.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "d7acff134c5f2ea09b2dc429f60b7c3432743dc4a5f31c0e01ef7fa3feec3bd6"
    url "https://releases.mondoo.com/cnspec/11.23.0/cnspec_11.23.0_darwin_amd64.tar.gz"
  else
    sha256 "d66ba85385af7f363daa1b1e556473f947a8be04db3e3e51a66721289296b6a1"
    url "https://releases.mondoo.com/cnspec/11.23.0/cnspec_11.23.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

