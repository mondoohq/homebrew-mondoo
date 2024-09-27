
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.23.2"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "bcfd9f496a11311b0c7db76c87daeddfbe554918b8458691461269e4eb0a6c6b"
    url "https://releases.mondoo.com/cnspec/11.23.2/cnspec_11.23.2_darwin_amd64.tar.gz"
  else
    sha256 "dd88b7840b450304940b82158b3881930356b9cc4b77942f854e2ac06cbf77c8"
    url "https://releases.mondoo.com/cnspec/11.23.2/cnspec_11.23.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

