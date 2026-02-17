
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "12.23.0"
  

  if Hardware::CPU.intel?
    sha256 "a0087b8c1901c7ed9ebf9378d8f782359c15add2c708774047325405647334bd"
    url "https://releases.mondoo.com/cnquery/12.23.0/cnquery_12.23.0_darwin_amd64.tar.gz"
  else
    sha256 "82f2ff6b9aee71ee4399b2160d064c134d92a86e72d26399e913d3a6a4f66535"
    url "https://releases.mondoo.com/cnquery/12.23.0/cnquery_12.23.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

