
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.7.1"
  

  if Hardware::CPU.intel?
    sha256 "4116c8640d16238f89415a59d20b97187d71b9d042617babb9377f284e6e3225"
    url "https://releases.mondoo.com/cnquery/11.7.1/cnquery_11.7.1_darwin_amd64.tar.gz"
  else
    sha256 "847a34ff9d69de5b4202bf13d2839849749a6e894a1e27a3fedca96933a3e191"
    url "https://releases.mondoo.com/cnquery/11.7.1/cnquery_11.7.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

