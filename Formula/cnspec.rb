
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework"
  homepage "https://mondoo.com"
  version "13.9.0"
  depends_on "mql"

  if Hardware::CPU.intel?
    sha256 "35b859ce88b241a1514a2ec6b48e38861ab8dda1db2fd52291e6a845ea3644ed"
    url "https://releases.mondoo.com/cnspec/13.9.0/cnspec_13.9.0_darwin_amd64.tar.gz"
  else
    sha256 "7370eff7eba53007dcacf375867331b338ec24603c45dea30488d09986f8eaa0"
    url "https://releases.mondoo.com/cnspec/13.9.0/cnspec_13.9.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
    bin.install_symlink "cnspec" => "cnquery"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

