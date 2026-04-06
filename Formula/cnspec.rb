
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework"
  homepage "https://mondoo.com"
  version "13.3.4"
  depends_on "mql"

  if Hardware::CPU.intel?
    sha256 "cdc6aa10b19cb627b5f77833dc1a1d98e17e0cc90da1478ff4597afb447f247d"
    url "https://releases.mondoo.com/cnspec/13.3.4/cnspec_13.3.4_darwin_amd64.tar.gz"
  else
    sha256 "59eafd846ff946ce040bac46efc582ecfdd470c0709946b85318e517d87036d1"
    url "https://releases.mondoo.com/cnspec/13.3.4/cnspec_13.3.4_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
    bin.install_symlink "cnspec" => "cnquery"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

