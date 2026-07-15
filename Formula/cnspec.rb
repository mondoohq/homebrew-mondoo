
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework"
  homepage "https://mondoo.com"
  version "13.29.1"
  depends_on "mql"

  if Hardware::CPU.intel?
    sha256 "b92b1c27cbf3c5d90e8e684dd627e78875211f110d5f2e50925b458da4f89c1d"
    url "https://releases.mondoo.com/cnspec/13.29.1/cnspec_13.29.1_darwin_amd64.tar.gz"
  else
    sha256 "0ba1cef4db3a5bc88ec31a680bf36caae88d11bf72349cca77a0cd1761912b34"
    url "https://releases.mondoo.com/cnspec/13.29.1/cnspec_13.29.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
    bin.install_symlink "cnspec" => "cnquery"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

