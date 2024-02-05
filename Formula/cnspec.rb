
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "10.2.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "7a36474e3f4fdf40b96f4da7c197eb93b97043acae013cc0f10143c46160fec7"
    url "https://releases.mondoo.com/cnspec/10.2.0/cnspec_10.2.0_darwin_amd64.tar.gz"
  else
    sha256 "7b02a1239e8f8da52d850ae196ed6a73d9382c093ee4fbb99a74aa84588a16c7"
    url "https://releases.mondoo.com/cnspec/10.2.0/cnspec_10.2.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

