
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "12.14.0"
  

  if Hardware::CPU.intel?
    sha256 "7d2cec8be5e1dd1dbf9bb8f6c2f357110c67aab22d5e82556182e5276afe1697"
    url "https://releases.mondoo.com/cnquery/12.14.0/cnquery_12.14.0_darwin_amd64.tar.gz"
  else
    sha256 "fc7cb1f61a25f340e7c447072b75a48e42dc45c74eecedaff7c931633f354fda"
    url "https://releases.mondoo.com/cnquery/12.14.0/cnquery_12.14.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

