
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.33.1"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "0f66268dc79600989deec2927d868392b75918b71f8244b42aa1b464847a1b29"
    url "https://releases.mondoo.com/cnspec/11.33.1/cnspec_11.33.1_darwin_amd64.tar.gz"
  else
    sha256 "98149012a6f92d6f993e4e381709e9b9fc91228224263f8c5b041812fcadaa0a"
    url "https://releases.mondoo.com/cnspec/11.33.1/cnspec_11.33.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

