
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework"
  homepage "https://mondoo.com"
  version "13.29.0"
  depends_on "mql"

  if Hardware::CPU.intel?
    sha256 "2a553cb2f0936f207d1e29c389087ddba5bf157aff5d1d8aa80ce4822246e21d"
    url "https://releases.mondoo.com/cnspec/13.29.0/cnspec_13.29.0_darwin_amd64.tar.gz"
  else
    sha256 "73293c5fa3a4ac7fc2aadb2c4dfaf1a096cc7634a662d24a7be66e32590fe9dd"
    url "https://releases.mondoo.com/cnspec/13.29.0/cnspec_13.29.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
    bin.install_symlink "cnspec" => "cnquery"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

