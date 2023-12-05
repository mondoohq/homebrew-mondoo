
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "9.10.0"
  

  if Hardware::CPU.intel?
    sha256 "ea9f80af6245889d45857ed414443cc48639591dd6f04518d5b37d3061ab5afe"
    url "https://releases.mondoo.com/cnquery/9.10.0/cnquery_9.10.0_darwin_amd64.tar.gz"
  else
    sha256 "455efdc39d5511ad72831ef6c778228c500417c721db3a8c694580363a091f96"
    url "https://releases.mondoo.com/cnquery/9.10.0/cnquery_9.10.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

