
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "12.22.0"
  

  if Hardware::CPU.intel?
    sha256 "89e223f5671c75fc908614c80bb0e83e47b66c21ebb4c62cdeab99dde732c385"
    url "https://releases.mondoo.com/cnquery/12.22.0/cnquery_12.22.0_darwin_amd64.tar.gz"
  else
    sha256 "06eb37cf9c5ad77a200dfc34b739f55e7a8ca3db458d0438c7e37346266516ae"
    url "https://releases.mondoo.com/cnquery/12.22.0/cnquery_12.22.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

