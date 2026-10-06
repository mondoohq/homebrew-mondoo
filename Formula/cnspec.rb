
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework"
  homepage "https://mondoo.com"
  version "14.3.0"
  depends_on "mql"

  if Hardware::CPU.intel?
    sha256 "b46676955455bc741f89cad65e83d7246a9c53a3034fe41668b565c97c296a99"
    url "https://releases.mondoo.com/cnspec/14.3.0/cnspec_14.3.0_darwin_amd64.tar.gz"
  else
    sha256 "1c80a8bb1d5ed93afe39de71aa682886a59269ede83ec9865fd5578d7376b98b"
    url "https://releases.mondoo.com/cnspec/14.3.0/cnspec_14.3.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
    bin.install_symlink "cnspec" => "cnquery"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

