
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework"
  homepage "https://mondoo.com"
  version "14.9.0"
  depends_on "mql"

  if Hardware::CPU.intel?
    sha256 "aae8f77101a4bb6599e5a6c00f5be6f13a6327446ae81f5278dc7331fc0702a5"
    url "https://releases.mondoo.com/cnspec/14.9.0/cnspec_14.9.0_darwin_amd64.tar.gz"
  else
    sha256 "b72dc24e16d3e5bf6ec5cf89f932eb3cd7711ea662c5286cfd4eb13cff6e933b"
    url "https://releases.mondoo.com/cnspec/14.9.0/cnspec_14.9.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
    bin.install_symlink "cnspec" => "cnquery"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

