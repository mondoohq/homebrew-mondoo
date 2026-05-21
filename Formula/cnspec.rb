
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework"
  homepage "https://mondoo.com"
  version "13.11.0"
  depends_on "mql"

  if Hardware::CPU.intel?
    sha256 "4fcc769019b0e81d94be0b5981110414b886002acd654ce51ad2a03164c18d71"
    url "https://releases.mondoo.com/cnspec/13.11.0/cnspec_13.11.0_darwin_amd64.tar.gz"
  else
    sha256 "b46248fd6e89897bdad6e86c654519eea86451de26978a134d3262afbeacc80a"
    url "https://releases.mondoo.com/cnspec/13.11.0/cnspec_13.11.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
    bin.install_symlink "cnspec" => "cnquery"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

