
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework"
  homepage "https://mondoo.com"
  version "13.8.0"
  depends_on "mql"

  if Hardware::CPU.intel?
    sha256 "805dcfe507fd4a04bb8b841f92711e7a272c889afec4d3d215fd6bdcd573f65b"
    url "https://releases.mondoo.com/cnspec/13.8.0/cnspec_13.8.0_darwin_amd64.tar.gz"
  else
    sha256 "9484fd0d41e2eaed0cd6709cdc66719b34ef07db60b729abbe0754cb50998bd8"
    url "https://releases.mondoo.com/cnspec/13.8.0/cnspec_13.8.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
    bin.install_symlink "cnspec" => "cnquery"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

