
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.4.3"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "7beadfb245d6ab436736954b3521f3474add4e7a346d9bb3e02e63358671d4be"
    url "https://releases.mondoo.com/cnspec/11.4.3/cnspec_11.4.3_darwin_amd64.tar.gz"
  else
    sha256 "3d9ac9b24b2bae2d271397260fbe0a309a68e79176f5d35df2367b839bc5c74a"
    url "https://releases.mondoo.com/cnspec/11.4.3/cnspec_11.4.3_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

