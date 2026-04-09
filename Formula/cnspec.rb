
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework"
  homepage "https://mondoo.com"
  version "13.4.1"
  depends_on "mql"

  if Hardware::CPU.intel?
    sha256 "71a4f89d73b3e84223d788fc00532a971b6b1a0bd6f025dc2190391b2e0a3916"
    url "https://releases.mondoo.com/cnspec/13.4.1/cnspec_13.4.1_darwin_amd64.tar.gz"
  else
    sha256 "7e7693a7bffdab3ffc3eced48e46bb77049c17afe3e8e0306cfdf62b75bba6f0"
    url "https://releases.mondoo.com/cnspec/13.4.1/cnspec_13.4.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
    bin.install_symlink "cnspec" => "cnquery"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

