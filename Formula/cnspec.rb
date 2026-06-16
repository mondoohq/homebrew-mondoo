
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework"
  homepage "https://mondoo.com"
  version "13.23.0"
  depends_on "mql"

  if Hardware::CPU.intel?
    sha256 "58a6c8f28c4658c84090f65b4136c9a61891d9cbd30604f0051863f81906baeb"
    url "https://releases.mondoo.com/cnspec/13.23.0/cnspec_13.23.0_darwin_amd64.tar.gz"
  else
    sha256 "b009d31be157999287dce15eca4766ea6357ea0465f0e4966d962f74fd39e130"
    url "https://releases.mondoo.com/cnspec/13.23.0/cnspec_13.23.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
    bin.install_symlink "cnspec" => "cnquery"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

