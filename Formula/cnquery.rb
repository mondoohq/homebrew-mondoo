
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "12.14.2"
  

  if Hardware::CPU.intel?
    sha256 "856def03a933e0c6d96bae3a845e629b5d1b3868c166870ce3bb99e1e15d67de"
    url "https://releases.mondoo.com/cnquery/12.14.2/cnquery_12.14.2_darwin_amd64.tar.gz"
  else
    sha256 "bcfe09514a850fdecc4ab76efb47e5fc91cfc0ff90f97d7ef263e2b4dae58f22"
    url "https://releases.mondoo.com/cnquery/12.14.2/cnquery_12.14.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

