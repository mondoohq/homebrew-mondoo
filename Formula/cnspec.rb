
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework"
  homepage "https://mondoo.com"
  version "13.35.2"
  depends_on "mql"

  if Hardware::CPU.intel?
    sha256 "30b41ea89ead859f4271f8c9c4e984a1402b3bc8fd0ec33f3fcae85e2085e451"
    url "https://releases.mondoo.com/cnspec/13.35.2/cnspec_13.35.2_darwin_amd64.tar.gz"
  else
    sha256 "031b3ea13f1845ffc530681a1126dfdc39ab7949c10e9aeb9c61cd0b13efd4aa"
    url "https://releases.mondoo.com/cnspec/13.35.2/cnspec_13.35.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
    bin.install_symlink "cnspec" => "cnquery"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

