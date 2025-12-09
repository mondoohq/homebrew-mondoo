
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "12.13.0"
  

  if Hardware::CPU.intel?
    sha256 "670f58571e12fd20f54f9b3f6d4388e49ee823e320476629ab95dcae80a9bdc6"
    url "https://releases.mondoo.com/cnquery/12.13.0/cnquery_12.13.0_darwin_amd64.tar.gz"
  else
    sha256 "fb9066484663e71e906afd3ab544ebafbb3381e59407800c111b86f03046a828"
    url "https://releases.mondoo.com/cnquery/12.13.0/cnquery_12.13.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

