
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework"
  homepage "https://mondoo.com"
  version "13.7.0"
  depends_on "mql"

  if Hardware::CPU.intel?
    sha256 "2a58b80095ba1cacc3337a89c12f75ad2cb099eebade3415339974b9c5592478"
    url "https://releases.mondoo.com/cnspec/13.7.0/cnspec_13.7.0_darwin_amd64.tar.gz"
  else
    sha256 "6971416c488f0f0212d4bb468b5d16c1b1cabbb6e2170133864d3b87511ad32f"
    url "https://releases.mondoo.com/cnspec/13.7.0/cnspec_13.7.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
    bin.install_symlink "cnspec" => "cnquery"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

