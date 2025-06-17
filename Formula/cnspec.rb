
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.59.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "b0b13e9df5aa472e99a26dd0e90abac8428f9e3e38bd9ddd1e54aeeb1dadde78"
    url "https://releases.mondoo.com/cnspec/11.59.0/cnspec_11.59.0_darwin_amd64.tar.gz"
  else
    sha256 "90e4b90a173d8f8a6893252c136ff7e5cf7ac771ef3a1653f7cc2b47382fe8ff"
    url "https://releases.mondoo.com/cnspec/11.59.0/cnspec_11.59.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

