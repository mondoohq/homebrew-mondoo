
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework"
  homepage "https://mondoo.com"
  version "14.4.0"
  depends_on "mql"

  if Hardware::CPU.intel?
    sha256 "26c2531811a187c2d8ca156a8864482726c68fb3d5771852d36ac7f1e52e0f7b"
    url "https://releases.mondoo.com/cnspec/14.4.0/cnspec_14.4.0_darwin_amd64.tar.gz"
  else
    sha256 "512ae177e57e1a2c7769584ac167616fd26b2cc92603bea27591e77eb2bdef29"
    url "https://releases.mondoo.com/cnspec/14.4.0/cnspec_14.4.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
    bin.install_symlink "cnspec" => "cnquery"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

