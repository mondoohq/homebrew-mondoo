
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.50.0"
  

  if Hardware::CPU.intel?
    sha256 "681e96811fed3b7f6220605ed87db80d6de5b76bc6503f76de6d2570614d1114"
    url "https://releases.mondoo.com/cnquery/11.50.0/cnquery_11.50.0_darwin_amd64.tar.gz"
  else
    sha256 "28971713718fb414d98dc2becdfb02939c18df7ec35f74a875773aa7f02e32f4"
    url "https://releases.mondoo.com/cnquery/11.50.0/cnquery_11.50.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

