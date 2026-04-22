
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework"
  homepage "https://mondoo.com"
  version "13.5.1"
  depends_on "mql"

  if Hardware::CPU.intel?
    sha256 "ca1fefa4a7f54b8c9d8ae7f19f0195e9cc6d2705967ac11ca381ee0262fb9c70"
    url "https://releases.mondoo.com/cnspec/13.5.1/cnspec_13.5.1_darwin_amd64.tar.gz"
  else
    sha256 "1241a6c8b8de22b52b3ac9684dc4ed605207a7597db0297ef6cd1041af4cdc2b"
    url "https://releases.mondoo.com/cnspec/13.5.1/cnspec_13.5.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
    bin.install_symlink "cnspec" => "cnquery"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

