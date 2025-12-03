
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "12.12.1"
  

  if Hardware::CPU.intel?
    sha256 "b9b5732864ffd36f47725066bd25d4ea963cd946167fda2ffe447c4d1d0d3e5d"
    url "https://releases.mondoo.com/cnquery/12.12.1/cnquery_12.12.1_darwin_amd64.tar.gz"
  else
    sha256 "ad044bb73e86e567a2fd4624347788d21a8c59128ec894190856c0b061f0db9a"
    url "https://releases.mondoo.com/cnquery/12.12.1/cnquery_12.12.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

