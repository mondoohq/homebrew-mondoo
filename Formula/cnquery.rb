
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "12.15.0"
  

  if Hardware::CPU.intel?
    sha256 "494ea1cddb634c8826c97770a6751c5dfd00275dfd03fd1d35fdc1e0c519d717"
    url "https://releases.mondoo.com/cnquery/12.15.0/cnquery_12.15.0_darwin_amd64.tar.gz"
  else
    sha256 "ab7f430267e1256b39256de4d365cb0a8feaf078f60d953bc2576e1374d6ac85"
    url "https://releases.mondoo.com/cnquery/12.15.0/cnquery_12.15.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

