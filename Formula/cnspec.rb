
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.9.1"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "df4c173cb2b822e7b876ab8b7ab5e3c5c670cc202e4cca8b48de45194bdced2f"
    url "https://releases.mondoo.com/cnspec/11.9.1/cnspec_11.9.1_darwin_amd64.tar.gz"
  else
    sha256 "3b7267179dadf00f263a42f4f30cabe3e7528068e407b8dff11444e10fbd7975"
    url "https://releases.mondoo.com/cnspec/11.9.1/cnspec_11.9.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

