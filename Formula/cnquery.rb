
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "10.8.4"
  

  if Hardware::CPU.intel?
    sha256 "7d62bacc4a6391417427754b513e5a127747b4619a6c389562c63076e9e6b753"
    url "https://releases.mondoo.com/cnquery/10.8.4/cnquery_10.8.4_darwin_amd64.tar.gz"
  else
    sha256 "06d7ae106d7efdf3bd2f9c6230945ad2682b2e8c785f1ade485e84f2c763fc2a"
    url "https://releases.mondoo.com/cnquery/10.8.4/cnquery_10.8.4_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

