
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.37.1"
  

  if Hardware::CPU.intel?
    sha256 "2a639a93d46db12afb173cc9b66dd332dd3af16693287a79df7106c4ac93b505"
    url "https://releases.mondoo.com/cnquery/11.37.1/cnquery_11.37.1_darwin_amd64.tar.gz"
  else
    sha256 "0d39447c0b1c9469fc5dfd2ff1b05dc12db7d1ff0b498e8d689210d37fba02bd"
    url "https://releases.mondoo.com/cnquery/11.37.1/cnquery_11.37.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

