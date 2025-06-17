
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.59.0"
  

  if Hardware::CPU.intel?
    sha256 ""
    url "https://releases.mondoo.com/cnquery/11.59.0/cnquery_11.59.0_darwin_amd64.tar.gz"
  else
    sha256 ""
    url "https://releases.mondoo.com/cnquery/11.59.0/cnquery_11.59.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

