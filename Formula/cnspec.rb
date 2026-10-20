
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework"
  homepage "https://mondoo.com"
  version "14.8.0"
  depends_on "mql"

  if Hardware::CPU.intel?
    sha256 "c735a249f3002a31819b91bcb5af94b5ce0011d170d0f76d6d9f0f75427c9d5e"
    url "https://releases.mondoo.com/cnspec/14.8.0/cnspec_14.8.0_darwin_amd64.tar.gz"
  else
    sha256 "d0a6dedd405e9b3ec024f8ef55c28d5939aebc8ff6fe2ef84c761f225b5ff1da"
    url "https://releases.mondoo.com/cnspec/14.8.0/cnspec_14.8.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
    bin.install_symlink "cnspec" => "cnquery"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

