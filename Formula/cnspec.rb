
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework"
  homepage "https://mondoo.com"
  version "14.7.0"
  depends_on "mql"

  if Hardware::CPU.intel?
    sha256 "df22a0a807c8200258edbabd0df6d620ea9daaa8948199948117eb96c63ae02e"
    url "https://releases.mondoo.com/cnspec/14.7.0/cnspec_14.7.0_darwin_amd64.tar.gz"
  else
    sha256 "6c754ea9d34aaba5775b7d4ef6870fb15823dc5290c26da6ceb495bdf5738b90"
    url "https://releases.mondoo.com/cnspec/14.7.0/cnspec_14.7.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
    bin.install_symlink "cnspec" => "cnquery"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

