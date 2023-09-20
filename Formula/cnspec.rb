# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1


class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "8.28.4"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "41e998a7573549d13e7c5e104c5fd697a680996d906313a1a10c0b8f9139740a"
    url "https://releases.mondoo.com/cnspec/8.28.4/cnspec_8.28.4_darwin_amd64.tar.gz"
  else
    sha256 "7362688f1e90a7905a18f02a2e9a396627bcd3af60dd5bf25dbdae1ee3e6325c"
    url "https://releases.mondoo.com/cnspec/8.28.4/cnspec_8.28.4_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

