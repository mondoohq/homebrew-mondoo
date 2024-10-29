
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.28.0"
  

  if Hardware::CPU.intel?
    sha256 "b00b9aaf1ebd020834eb8ec08b50710a86dba9b3538d80aea8136df9e6b0e3dd"
    url "https://releases.mondoo.com/cnquery/11.28.0/cnquery_11.28.0_darwin_amd64.tar.gz"
  else
    sha256 "40d1076793fa736f61bfb06b33ff7a940b400bef8b0dd60fbefc818d41d16a21"
    url "https://releases.mondoo.com/cnquery/11.28.0/cnquery_11.28.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

