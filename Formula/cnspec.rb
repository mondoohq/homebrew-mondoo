
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework"
  homepage "https://mondoo.com"
  version "14.12.0"
  depends_on "mql"

  if Hardware::CPU.intel?
    sha256 "91f2d682c152b215411df8d31a4ce2e19ebd3c6bfba30ba80529744714b21350"
    url "https://releases.mondoo.com/cnspec/14.12.0/cnspec_14.12.0_darwin_amd64.tar.gz"
  else
    sha256 "d1955d4308ac2d06c13e9fde7e92fa1ddc73d63ef8749fbe93082683d5c1d9db"
    url "https://releases.mondoo.com/cnspec/14.12.0/cnspec_14.12.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
    bin.install_symlink "cnspec" => "cnquery"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

