
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "10.0.3"
  

  if Hardware::CPU.intel?
    sha256 "00aeb392d298f7bbee7ce39cdcf29696d3fe3a95e35ef46ad511a36e5908532c"
    url "https://releases.mondoo.com/cnquery/10.0.3/cnquery_10.0.3_darwin_amd64.tar.gz"
  else
    sha256 "d017670bec999528e5c8b38ce9269dc2addcfc25e99c07fb76e94bc077fa5978"
    url "https://releases.mondoo.com/cnquery/10.0.3/cnquery_10.0.3_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

