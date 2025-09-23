
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "12.2.1"
  

  if Hardware::CPU.intel?
    sha256 "68c6fd2e7dc6c3076bba2aa62878efa3427d2a226f14744755e660aa6db0eb52"
    url "https://releases.mondoo.com/cnquery/12.2.1/cnquery_12.2.1_darwin_amd64.tar.gz"
  else
    sha256 "b36c0b0ea602a9e6449fe19b6f78269ca385aa39303197c2907314bb5c39f336"
    url "https://releases.mondoo.com/cnquery/12.2.1/cnquery_12.2.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

