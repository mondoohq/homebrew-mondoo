
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.63.1"
  

  if Hardware::CPU.intel?
    sha256 "64f31a04be4e45659361871673abe6b29949514277daa993e5692bc715d5e556"
    url "https://releases.mondoo.com/cnquery/11.63.1/cnquery_11.63.1_darwin_amd64.tar.gz"
  else
    sha256 "1f4564ca0035d5436ef34815f408d78bd744dc647c0b7a350aa116cff441c0f2"
    url "https://releases.mondoo.com/cnquery/11.63.1/cnquery_11.63.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

