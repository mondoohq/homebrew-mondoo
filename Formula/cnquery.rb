
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "12.17.0"
  

  if Hardware::CPU.intel?
    sha256 "b01ccfa4418b98616787fb3af133543756d06bcef0332ca249eb90e3bd44717d"
    url "https://releases.mondoo.com/cnquery/12.17.0/cnquery_12.17.0_darwin_amd64.tar.gz"
  else
    sha256 "2edfcbd9686f0b8479bde31aa1c719d6f691a50e5462a84b9a8af3190d2b45e4"
    url "https://releases.mondoo.com/cnquery/12.17.0/cnquery_12.17.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

