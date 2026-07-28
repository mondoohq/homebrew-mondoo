
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework"
  homepage "https://mondoo.com"
  version "13.31.0"
  depends_on "mql"

  if Hardware::CPU.intel?
    sha256 "76a526b7af3b9c05bf0eec492396d76a4c73f752c3a5c08bda7bdb345e43b242"
    url "https://releases.mondoo.com/cnspec/13.31.0/cnspec_13.31.0_darwin_amd64.tar.gz"
  else
    sha256 "bd87406ed7918a215d3fb321aeae17f832ddb8bddd722fddefb0d0d8a90897a6"
    url "https://releases.mondoo.com/cnspec/13.31.0/cnspec_13.31.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
    bin.install_symlink "cnspec" => "cnquery"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

