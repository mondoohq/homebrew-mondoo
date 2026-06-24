
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework"
  homepage "https://mondoo.com"
  version "13.24.1"
  depends_on "mql"

  if Hardware::CPU.intel?
    sha256 "c7d7aa808ee40a6e514c97eb26e91a13a96694ee71ffbc59cfbf28c75c2b5ab9"
    url "https://releases.mondoo.com/cnspec/13.24.1/cnspec_13.24.1_darwin_amd64.tar.gz"
  else
    sha256 "6fca8e2a3a2cebcff6b6637aae178099edb7575fbd032b02b9b843ee3275efc1"
    url "https://releases.mondoo.com/cnspec/13.24.1/cnspec_13.24.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
    bin.install_symlink "cnspec" => "cnquery"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

