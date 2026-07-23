
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework"
  homepage "https://mondoo.com"
  version "13.30.1"
  depends_on "mql"

  if Hardware::CPU.intel?
    sha256 "624fe46e11fa892c6721403ec1e538a0728990a069115c2116d09939bcb97fed"
    url "https://releases.mondoo.com/cnspec/13.30.1/cnspec_13.30.1_darwin_amd64.tar.gz"
  else
    sha256 "3e2135cba38c8bbf474efae9a3a3d6d63ca6fe22ca0caf46bd87016bcddc522d"
    url "https://releases.mondoo.com/cnspec/13.30.1/cnspec_13.30.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
    bin.install_symlink "cnspec" => "cnquery"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

