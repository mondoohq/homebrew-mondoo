
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "9.9.1"
  

  if Hardware::CPU.intel?
    sha256 "95689f79c6bf5133167fffff2010cf8728c37fb46571249f8f949c819dbe19e3"
    url "https://releases.mondoo.com/cnquery/9.9.1/cnquery_9.9.1_darwin_amd64.tar.gz"
  else
    sha256 "cf7e4bc43671de122b56b023f37f8eafb0943c00960b4d2cc8c1a1aa4bcf1457"
    url "https://releases.mondoo.com/cnquery/9.9.1/cnquery_9.9.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

