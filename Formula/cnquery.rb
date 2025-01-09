
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.36.2"
  

  if Hardware::CPU.intel?
    sha256 "3651f0d3b52dd9737bcb9e2787bc2fa71adc8599895076acf3bdb5d31c1c3966"
    url "https://releases.mondoo.com/cnquery/11.36.2/cnquery_11.36.2_darwin_amd64.tar.gz"
  else
    sha256 "878b44bb6cfbd02b11d808074325614644f1dbf17aacf6a5d5644cb7dbc10448"
    url "https://releases.mondoo.com/cnquery/11.36.2/cnquery_11.36.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

