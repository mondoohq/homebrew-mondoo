
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.3.0"
  

  if Hardware::CPU.intel?
    sha256 "29fa0617ec64ddae5a346c8304b4b4060f4846d8ed7401b1f07f9c1bfbdab661"
    url "https://releases.mondoo.com/cnquery/11.3.0/cnquery_11.3.0_darwin_amd64.tar.gz"
  else
    sha256 "9fa81cef18d26d4524d8386e2d983a3510b0d842182cac3c2df1b9cf39fd94eb"
    url "https://releases.mondoo.com/cnquery/11.3.0/cnquery_11.3.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

