
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework"
  homepage "https://mondoo.com"
  version "14.0.1"
  depends_on "mql"

  if Hardware::CPU.intel?
    sha256 "e429867b04b760a0232ad9ac34ab63848f9c6054597ce94121174b8a63ed8c38"
    url "https://releases.mondoo.com/cnspec/14.0.1/cnspec_14.0.1_darwin_amd64.tar.gz"
  else
    sha256 "782dc90c0df5aca5f784eb33a5a6f1a06321c2e41e9638a39f759e505a9f0e40"
    url "https://releases.mondoo.com/cnspec/14.0.1/cnspec_14.0.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
    bin.install_symlink "cnspec" => "cnquery"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

