
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework"
  homepage "https://mondoo.com"
  version "13.8.3"
  depends_on "mql"

  if Hardware::CPU.intel?
    sha256 "30a05241d545b48eace6536bb58daadfa9f3b9a6b003b5bafe8a847e51d19964"
    url "https://releases.mondoo.com/cnspec/13.8.3/cnspec_13.8.3_darwin_amd64.tar.gz"
  else
    sha256 "f238307f28ae22affef44a11061138a998b19b03bc3c652fe1ba7dd933dfa6ff"
    url "https://releases.mondoo.com/cnspec/13.8.3/cnspec_13.8.3_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
    bin.install_symlink "cnspec" => "cnquery"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

