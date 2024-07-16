
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.13.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "9d14011968b359b00c1db8b614272d3e0302a002f61029bf6c4663f2f7b1fdb8"
    url "https://releases.mondoo.com/cnspec/11.13.0/cnspec_11.13.0_darwin_amd64.tar.gz"
  else
    sha256 "535326fc767ded30355f0421db53fe1ebbfc8151860e17222a861d4daaa8e618"
    url "https://releases.mondoo.com/cnspec/11.13.0/cnspec_11.13.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

