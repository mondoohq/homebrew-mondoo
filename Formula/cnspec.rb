
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.36.2"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "d4b03c458b3a17a668d2812a12a278f9fc520a40fcad77e92605c4c90aa89477"
    url "https://releases.mondoo.com/cnspec/11.36.2/cnspec_11.36.2_darwin_amd64.tar.gz"
  else
    sha256 "e37a4fd9241c5120effe5846766e6a28b6186c545d7a8ed4c4daa609d33a5cd4"
    url "https://releases.mondoo.com/cnspec/11.36.2/cnspec_11.36.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

