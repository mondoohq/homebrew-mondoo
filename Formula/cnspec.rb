
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework"
  homepage "https://mondoo.com"
  version "13.32.0"
  depends_on "mql"

  if Hardware::CPU.intel?
    sha256 "72821458715d28991e0e1d636d78a726919e30cd0ad2ddbb0abc40c8a07a8739"
    url "https://releases.mondoo.com/cnspec/13.32.0/cnspec_13.32.0_darwin_amd64.tar.gz"
  else
    sha256 "85ac0fda03d3d12da995a541a1ef206769625a57555501a086a36aac3293d39a"
    url "https://releases.mondoo.com/cnspec/13.32.0/cnspec_13.32.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
    bin.install_symlink "cnspec" => "cnquery"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

