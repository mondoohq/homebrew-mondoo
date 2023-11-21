
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "9.8.0"
  

  if Hardware::CPU.intel?
    sha256 "5ae843c9208f3d3b796c3c0c8db9835d11253b00ba3ddc8a455d100328a94aed"
    url "https://releases.mondoo.com/cnquery/9.8.0/cnquery_9.8.0_darwin_amd64.tar.gz"
  else
    sha256 "c0800044ed4f1081765198f6ccc424413e1c0c764ac902c770c546888050ea4f"
    url "https://releases.mondoo.com/cnquery/9.8.0/cnquery_9.8.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

