
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework"
  homepage "https://mondoo.com"
  version "13.29.2"
  depends_on "mql"

  if Hardware::CPU.intel?
    sha256 "b958f0a15b728ed3b3a5344a4204246c070190064e08842aed867b67d002502f"
    url "https://releases.mondoo.com/cnspec/13.29.2/cnspec_13.29.2_darwin_amd64.tar.gz"
  else
    sha256 "ded758817e363b752ea40d039211b439ac0090771d24298039cc55be11fee32d"
    url "https://releases.mondoo.com/cnspec/13.29.2/cnspec_13.29.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
    bin.install_symlink "cnspec" => "cnquery"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

