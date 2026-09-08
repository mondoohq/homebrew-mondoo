
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework"
  homepage "https://mondoo.com"
  version "13.38.0"
  depends_on "mql"

  if Hardware::CPU.intel?
    sha256 "1703fe794746b00ded9d42a744129fe3fdf6ddd073308c58ef42d6eb7c1107fe"
    url "https://releases.mondoo.com/cnspec/13.38.0/cnspec_13.38.0_darwin_amd64.tar.gz"
  else
    sha256 "98769e14b9209b532e63e14a494b72ed9584bb45dbe1b55354543a03578a6428"
    url "https://releases.mondoo.com/cnspec/13.38.0/cnspec_13.38.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
    bin.install_symlink "cnspec" => "cnquery"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

