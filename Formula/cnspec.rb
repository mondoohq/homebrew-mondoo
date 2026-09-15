
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework"
  homepage "https://mondoo.com"
  version "13.39.0"
  depends_on "mql"

  if Hardware::CPU.intel?
    sha256 "29ad73871765c5b0053c7f3875c81164142af37b166deefb301118c198e6da50"
    url "https://releases.mondoo.com/cnspec/13.39.0/cnspec_13.39.0_darwin_amd64.tar.gz"
  else
    sha256 "856b31f92f9bfd9932b9411aa18c2161b5eb5429dd151c28a48b2bee5d6c087a"
    url "https://releases.mondoo.com/cnspec/13.39.0/cnspec_13.39.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
    bin.install_symlink "cnspec" => "cnquery"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

