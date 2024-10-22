
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.27.0"
  

  if Hardware::CPU.intel?
    sha256 "267fa60a59c44a297a1c8c80c3c7edc7247a1888422dedd217f1c5eb5f68e938"
    url "https://releases.mondoo.com/cnquery/11.27.0/cnquery_11.27.0_darwin_amd64.tar.gz"
  else
    sha256 "c587bae0450a070ab0b13b35c8cc8ce092015a03e19d6999f7dc5d2f5ca45c64"
    url "https://releases.mondoo.com/cnquery/11.27.0/cnquery_11.27.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

