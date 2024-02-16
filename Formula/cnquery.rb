
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "10.3.2"
  

  if Hardware::CPU.intel?
    sha256 "9ccf9cd0fd5e2b7b992fdc0f30aeda8f1cce084118a50c1515a735679193f4b3"
    url "https://releases.mondoo.com/cnquery/10.3.2/cnquery_10.3.2_darwin_amd64.tar.gz"
  else
    sha256 "91e0b25f741bcb2510e74f6d1828b0e13d076af56b1b305d1d6185628ef83e41"
    url "https://releases.mondoo.com/cnquery/10.3.2/cnquery_10.3.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

