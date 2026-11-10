
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework"
  homepage "https://mondoo.com"
  version "14.11.1"
  depends_on "mql"

  if Hardware::CPU.intel?
    sha256 "78efad1e8bf55727d031cb03974f4d5eb108c89d224309279dbc713aa20c721f"
    url "https://releases.mondoo.com/cnspec/14.11.1/cnspec_14.11.1_darwin_amd64.tar.gz"
  else
    sha256 "34516eb3c5c5ca651833e8049e04f75e0bcf96aa364177e6cc2c58147ff20f48"
    url "https://releases.mondoo.com/cnspec/14.11.1/cnspec_14.11.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
    bin.install_symlink "cnspec" => "cnquery"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

