
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "10.2.0"
  

  if Hardware::CPU.intel?
    sha256 "c2a4e5ab6af26e1f995d0f1202ceed0a1f817b77642afc2a99874bb8328c5760"
    url "https://releases.mondoo.com/cnquery/10.2.0/cnquery_10.2.0_darwin_amd64.tar.gz"
  else
    sha256 "dbbd9ac2db8323bab42c9ab21926e1838f0656196d8626dee24b75029f568e74"
    url "https://releases.mondoo.com/cnquery/10.2.0/cnquery_10.2.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

