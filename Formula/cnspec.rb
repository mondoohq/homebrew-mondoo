
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.15.1"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "47a25b447ec57a7dfc958fdf492623b46805ce992530937c1a0026fe5d17460d"
    url "https://releases.mondoo.com/cnspec/11.15.1/cnspec_11.15.1_darwin_amd64.tar.gz"
  else
    sha256 "8b5ae0c8777af1beb54a525b801b1b3d9400edf2ddd03ae8086dad5d56ce1c59"
    url "https://releases.mondoo.com/cnspec/11.15.1/cnspec_11.15.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

