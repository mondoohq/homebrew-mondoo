
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.36.0"
  

  if Hardware::CPU.intel?
    sha256 "da75f0467c0045df567f53895d9058571d240d01fd77b2e6e187e0f1d012eb25"
    url "https://releases.mondoo.com/cnquery/11.36.0/cnquery_11.36.0_darwin_amd64.tar.gz"
  else
    sha256 "76a38c84f6da2e8572e3ecebfd411713400c5b312ac02a37da7ba8561a3ca5ce"
    url "https://releases.mondoo.com/cnquery/11.36.0/cnquery_11.36.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

