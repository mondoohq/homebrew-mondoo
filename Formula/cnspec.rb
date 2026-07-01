
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework"
  homepage "https://mondoo.com"
  version "13.27.1"
  depends_on "mql"

  if Hardware::CPU.intel?
    sha256 "acd952a8c4a94f3305a2841fe4e0254d254975b314bbbdc2d441be0ce98494b5"
    url "https://releases.mondoo.com/cnspec/13.27.1/cnspec_13.27.1_darwin_amd64.tar.gz"
  else
    sha256 "8b7d62bab93acb3d0d5dcbd45aeb211be72a49bbd9faaadf3add9996e319ff89"
    url "https://releases.mondoo.com/cnspec/13.27.1/cnspec_13.27.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
    bin.install_symlink "cnspec" => "cnquery"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

