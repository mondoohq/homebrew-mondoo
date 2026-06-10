
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework"
  homepage "https://mondoo.com"
  version "13.22.1"
  depends_on "mql"

  if Hardware::CPU.intel?
    sha256 "9a804b9272516548027423bca1dd2f3425b41dfa91696eb4107fb7e76813e232"
    url "https://releases.mondoo.com/cnspec/13.22.1/cnspec_13.22.1_darwin_amd64.tar.gz"
  else
    sha256 "caecd0209284f190433f1bbac8eaff9e28c82d743ee6ad3ed904875c68f39dcb"
    url "https://releases.mondoo.com/cnspec/13.22.1/cnspec_13.22.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
    bin.install_symlink "cnspec" => "cnquery"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

