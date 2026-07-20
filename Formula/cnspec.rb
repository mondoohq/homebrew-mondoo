
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework"
  homepage "https://mondoo.com"
  version "13.30.0"
  depends_on "mql"

  if Hardware::CPU.intel?
    sha256 "51fcab12ccf780fdbeb2761efd47aab6fe8536616fef87c64e7af9769c7f2dc1"
    url "https://releases.mondoo.com/cnspec/13.30.0/cnspec_13.30.0_darwin_amd64.tar.gz"
  else
    sha256 "afe8ba7fa1cc3029c92f9d2bdfa06ca621d5e2bb857735d6ce49d18b6d7be14c"
    url "https://releases.mondoo.com/cnspec/13.30.0/cnspec_13.30.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
    bin.install_symlink "cnspec" => "cnquery"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

