
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework"
  homepage "https://mondoo.com"
  version "13.27.3"
  depends_on "mql"

  if Hardware::CPU.intel?
    sha256 "2004f65c1c4524e2762d3199c06df28afbfe712f6713146b1dceea9635715ef6"
    url "https://releases.mondoo.com/cnspec/13.27.3/cnspec_13.27.3_darwin_amd64.tar.gz"
  else
    sha256 "6dcd7a99194a68d7586cdc21a1f1e7aebf31ca8cab7635f181435c83dc80f879"
    url "https://releases.mondoo.com/cnspec/13.27.3/cnspec_13.27.3_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
    bin.install_symlink "cnspec" => "cnquery"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

