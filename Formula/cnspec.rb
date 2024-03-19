
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "10.8.2"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "e860375f14f258d070d942acee22d0aec386bd4298cbd29e3626659d644e8072"
    url "https://releases.mondoo.com/cnspec/10.8.2/cnspec_10.8.2_darwin_amd64.tar.gz"
  else
    sha256 "4e1f2685be8c8081d088f96dc8380b4d14fe4f954d4d85ec8845db69281f8908"
    url "https://releases.mondoo.com/cnspec/10.8.2/cnspec_10.8.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

