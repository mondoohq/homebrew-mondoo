
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "9.14.0"
  

  if Hardware::CPU.intel?
    sha256 "1e99c5a387d38cbafa172865e0a517692a4c968b1449cd86cd2a305e02d3351b"
    url "https://releases.mondoo.com/cnquery/9.14.0/cnquery_9.14.0_darwin_amd64.tar.gz"
  else
    sha256 "e5d1ff55b9984ff1a7047fc630c5e872c60b2c24a0622fda0e9a42448b8959c5"
    url "https://releases.mondoo.com/cnquery/9.14.0/cnquery_9.14.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

