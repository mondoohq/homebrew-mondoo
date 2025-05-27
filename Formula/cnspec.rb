
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.56.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "bb5534e5ab04319ef100275d292dbe8aabcd30f3d9d499fdd2bd2ffe7d1ae0ff"
    url "https://releases.mondoo.com/cnspec/11.56.0/cnspec_11.56.0_darwin_amd64.tar.gz"
  else
    sha256 "5fc443e0dde4c890cee5c9aa63941126b223fcb10bf8123fc127993e8e45d517"
    url "https://releases.mondoo.com/cnspec/11.56.0/cnspec_11.56.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

