
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework"
  homepage "https://mondoo.com"
  version "13.38.1"
  depends_on "mql"

  if Hardware::CPU.intel?
    sha256 "ecd2f85f498680049dc597c964d93a7c25bb055255a110ba475ef4170ca290e5"
    url "https://releases.mondoo.com/cnspec/13.38.1/cnspec_13.38.1_darwin_amd64.tar.gz"
  else
    sha256 "af26e9d583a2e2194a5c547dc4170b58653a7d890563daa096df8c847c94581a"
    url "https://releases.mondoo.com/cnspec/13.38.1/cnspec_13.38.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
    bin.install_symlink "cnspec" => "cnquery"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

