
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.68.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "909f2d90950e94d473ec782f8e07e3e87c3be812e876f4cb23f06d6e6f76a441"
    url "https://releases.mondoo.com/cnspec/11.68.0/cnspec_11.68.0_darwin_amd64.tar.gz"
  else
    sha256 "29d36dc62c402113b172bfb26203ce4f89ed88f29f9208077093a9f9bc0e4552"
    url "https://releases.mondoo.com/cnspec/11.68.0/cnspec_11.68.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

