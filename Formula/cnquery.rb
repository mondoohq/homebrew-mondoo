
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.68.0"
  

  if Hardware::CPU.intel?
    sha256 "1eaed73bd79024edca60e02a3f0e48752f60ffe8af3900b91228007e6e4a7fec"
    url "https://releases.mondoo.com/cnquery/11.68.0/cnquery_11.68.0_darwin_amd64.tar.gz"
  else
    sha256 "9ef12bae14df43c3ad71ea18db0e0de460c0cc862d321362e63ba09aff197892"
    url "https://releases.mondoo.com/cnquery/11.68.0/cnquery_11.68.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

