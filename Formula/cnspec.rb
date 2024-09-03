
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.20.1"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "ad8aef32601c33f2d6afb8d605bffcd9ad47e099b9db9071ddd6e3278e655b34"
    url "https://releases.mondoo.com/cnspec/11.20.1/cnspec_11.20.1_darwin_amd64.tar.gz"
  else
    sha256 "026b6140ea7c3b5cdc6ffc7ff3a8e3970777dc7ab3791b1d5abb219bf45f2e73"
    url "https://releases.mondoo.com/cnspec/11.20.1/cnspec_11.20.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

