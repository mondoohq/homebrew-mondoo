
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "12.3.0"
  

  if Hardware::CPU.intel?
    sha256 "23c9f351758ecb7cae97e4c9d8026328627874417fb95c821158d9becdc5d05d"
    url "https://releases.mondoo.com/cnquery/12.3.0/cnquery_12.3.0_darwin_amd64.tar.gz"
  else
    sha256 "4d8c04e4d59ec458b57485f58f94101f070a061fb668fb0611db7a22646cdbc4"
    url "https://releases.mondoo.com/cnquery/12.3.0/cnquery_12.3.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

