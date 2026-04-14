
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework"
  homepage "https://mondoo.com"
  version "13.5.0"
  depends_on "mql"

  if Hardware::CPU.intel?
    sha256 "2ff20af084151d5e742d8c579923f0fdfa5758cdbde7260da538697b045704a9"
    url "https://releases.mondoo.com/cnspec/13.5.0/cnspec_13.5.0_darwin_amd64.tar.gz"
  else
    sha256 "3581f0f667e30e7bffaef864437a399b58362016eced351ffdeabb3b6a957713"
    url "https://releases.mondoo.com/cnspec/13.5.0/cnspec_13.5.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
    bin.install_symlink "cnspec" => "cnquery"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

