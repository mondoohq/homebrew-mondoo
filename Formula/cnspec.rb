
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework"
  homepage "https://mondoo.com"
  version "13.8.1"
  depends_on "mql"

  if Hardware::CPU.intel?
    sha256 "8fedd0007ba2214ffbe2a7c4cd84ae06e1b6a2f3a858361ee46dea490f32900f"
    url "https://releases.mondoo.com/cnspec/13.8.1/cnspec_13.8.1_darwin_amd64.tar.gz"
  else
    sha256 "328e9f3bbc95efebfc47aeedf0536afdf9c5cedb2b36cd76e9cb4e23a122d1a2"
    url "https://releases.mondoo.com/cnspec/13.8.1/cnspec_13.8.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
    bin.install_symlink "cnspec" => "cnquery"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

