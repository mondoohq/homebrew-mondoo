
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "9.5.1"
  

  if Hardware::CPU.intel?
    sha256 "ecaa518b1bb069e70bf6c48cbacacc5237c15fcd5678cf9c8200401de4ba329e"
    url "https://releases.mondoo.com/cnquery/9.5.1/cnquery_9.5.1_darwin_amd64.tar.gz"
  else
    sha256 "16135b1378c663dcfcf35ca84e3767e8f9a1145aa3d5656b4356bc3661bb104d"
    url "https://releases.mondoo.com/cnquery/9.5.1/cnquery_9.5.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

