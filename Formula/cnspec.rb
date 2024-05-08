
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.3.1"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "9e90d170199d59a8cbdd8a9203029b6c5e917102757ba7643ab7692aa16e5401"
    url "https://releases.mondoo.com/cnspec/11.3.1/cnspec_11.3.1_darwin_amd64.tar.gz"
  else
    sha256 "c9023e0e145d08c84649a7eda3aa0d61c55379d99f76fd44fbd5002456fa296b"
    url "https://releases.mondoo.com/cnspec/11.3.1/cnspec_11.3.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

