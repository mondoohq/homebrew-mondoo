
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.4.2"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "2ef9e6302d8231328477dbbe006019cc521f63cc1e4e5fdce64a88897f2b729d"
    url "https://releases.mondoo.com/cnspec/11.4.2/cnspec_11.4.2_darwin_amd64.tar.gz"
  else
    sha256 "22a922083cc04b421264dbbf3ac4b6ee9144fab4726935bfaf70ae7f10cf7e6a"
    url "https://releases.mondoo.com/cnspec/11.4.2/cnspec_11.4.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

