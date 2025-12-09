
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "12.13.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "6dc6bef4bc9e00ad98b3d10ff246cd54c40fd823692b47af030db797d107a348"
    url "https://releases.mondoo.com/cnspec/12.13.0/cnspec_12.13.0_darwin_amd64.tar.gz"
  else
    sha256 "55d775475e6400fcc129023891b4c97c26dde0431d26e8fc7670240e6d175107"
    url "https://releases.mondoo.com/cnspec/12.13.0/cnspec_12.13.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

