
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework"
  homepage "https://mondoo.com"
  version "13.35.1"
  depends_on "mql"

  if Hardware::CPU.intel?
    sha256 "cb01a7f651f4f6791feff9658615182d986a6f87fd7e397fbc7a434fb713dccd"
    url "https://releases.mondoo.com/cnspec/13.35.1/cnspec_13.35.1_darwin_amd64.tar.gz"
  else
    sha256 "a7724936d78c151b7c22df48eaa55cd2c128746215fbc5ddc5e940e54b03c0e7"
    url "https://releases.mondoo.com/cnspec/13.35.1/cnspec_13.35.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
    bin.install_symlink "cnspec" => "cnquery"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

