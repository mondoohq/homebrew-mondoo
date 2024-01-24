
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "10.0.2"
  

  if Hardware::CPU.intel?
    sha256 "1394a681f6b522923881294b931a814183053f3eb06c03f745e89735ebd715b5"
    url "https://releases.mondoo.com/cnquery/10.0.2/cnquery_10.0.2_darwin_amd64.tar.gz"
  else
    sha256 "2db855a8b65f96316f0b9510a17ce6627a67992234fded0cf916ce06f0deb886"
    url "https://releases.mondoo.com/cnquery/10.0.2/cnquery_10.0.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

