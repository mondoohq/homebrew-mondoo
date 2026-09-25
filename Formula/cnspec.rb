
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework"
  homepage "https://mondoo.com"
  version "14.1.0"
  depends_on "mql"

  if Hardware::CPU.intel?
    sha256 "8eb648cf4377e2f8cf7f428c4a163f3f23907ddd366d5c73012fefcfff601036"
    url "https://releases.mondoo.com/cnspec/14.1.0/cnspec_14.1.0_darwin_amd64.tar.gz"
  else
    sha256 "faa097174b23efb537a3aea52905041a680498cb526322d3face25029c515956"
    url "https://releases.mondoo.com/cnspec/14.1.0/cnspec_14.1.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
    bin.install_symlink "cnspec" => "cnquery"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

