
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework"
  homepage "https://mondoo.com"
  version "14.6.0"
  depends_on "mql"

  if Hardware::CPU.intel?
    sha256 "8a160e5e79c227abcfe5619d5e433911447387e1f7184c2d9792b841ba3d0069"
    url "https://releases.mondoo.com/cnspec/14.6.0/cnspec_14.6.0_darwin_amd64.tar.gz"
  else
    sha256 "c498c74639885f8d01d8923d006c953814bbb9394a10a4eb5cadd41326f78696"
    url "https://releases.mondoo.com/cnspec/14.6.0/cnspec_14.6.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
    bin.install_symlink "cnspec" => "cnquery"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

