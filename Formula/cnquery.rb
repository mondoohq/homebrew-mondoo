
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "10.7.0"
  

  if Hardware::CPU.intel?
    sha256 "379de7c03fd10f5e4d33aaa4a120c28b83b033e33e1712180b8b8ba9d7f90db8"
    url "https://releases.mondoo.com/cnquery/10.7.0/cnquery_10.7.0_darwin_amd64.tar.gz"
  else
    sha256 "f8ddc638b7ebef6922433c614be2fb7291905028f3335f778f6fd80aa71bfb2a"
    url "https://releases.mondoo.com/cnquery/10.7.0/cnquery_10.7.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

