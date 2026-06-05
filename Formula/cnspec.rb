
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework"
  homepage "https://mondoo.com"
  version "13.21.1"
  depends_on "mql"

  if Hardware::CPU.intel?
    sha256 "675bf703f2f06430955104ab00d50aa215be091b2405993fcf7cfa458a0d0a38"
    url "https://releases.mondoo.com/cnspec/13.21.1/cnspec_13.21.1_darwin_amd64.tar.gz"
  else
    sha256 "4c2d4c24c12dd6bf3354e0041930bd9ba6ecb41ea255e2592db32e08b623ef9e"
    url "https://releases.mondoo.com/cnspec/13.21.1/cnspec_13.21.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
    bin.install_symlink "cnspec" => "cnquery"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

