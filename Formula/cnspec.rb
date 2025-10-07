
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "12.4.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "6c0706219eace74d0332a8f75d99442843b92e3d495be9debbb944ac2f95c630"
    url "https://releases.mondoo.com/cnspec/12.4.0/cnspec_12.4.0_darwin_amd64.tar.gz"
  else
    sha256 "de6058a4d4a893786df1e0067751b583a02e28d2afc3eae556d70d7bddd44a52"
    url "https://releases.mondoo.com/cnspec/12.4.0/cnspec_12.4.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

