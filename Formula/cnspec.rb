
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework"
  homepage "https://mondoo.com"
  version "13.35.0"
  depends_on "mql"

  if Hardware::CPU.intel?
    sha256 "f49ed5c784aa8535058676d7b64e1ca6d2b099dad477ce8bb694e98b93144168"
    url "https://releases.mondoo.com/cnspec/13.35.0/cnspec_13.35.0_darwin_amd64.tar.gz"
  else
    sha256 "bf104f0d9cf58e8e57a1548f6c34a5f83de66bec37ecf9ca29488e1ce2a245c7"
    url "https://releases.mondoo.com/cnspec/13.35.0/cnspec_13.35.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
    bin.install_symlink "cnspec" => "cnquery"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

