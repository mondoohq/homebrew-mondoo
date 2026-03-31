
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework"
  homepage "https://mondoo.com"
  version "13.3.0"
  depends_on "mql"

  if Hardware::CPU.intel?
    sha256 "0640e883f53338078372a25d9673fb6f26a4556f4f723f94e14e33d6f3691cdb"
    url "https://releases.mondoo.com/cnspec/13.3.0/cnspec_13.3.0_darwin_amd64.tar.gz"
  else
    sha256 "64a21fe5f9247bed65e8260bad73f81550f6b567c4e75b18242caf64073a889e"
    url "https://releases.mondoo.com/cnspec/13.3.0/cnspec_13.3.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
    bin.install_symlink "cnspec" => "cnquery"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

