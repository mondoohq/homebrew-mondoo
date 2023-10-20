
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "9.2.3"
  

  if Hardware::CPU.intel?
    sha256 "0185015b718d50ff137edb54a507d8677f355b03b9625cad83551a76ebeb39a7"
    url "https://releases.mondoo.com/cnquery/9.2.3/cnquery_9.2.3_darwin_amd64.tar.gz"
  else
    sha256 "271298606062220a6c2d8e620f67b66e4ea40dce7d19c7f325d453b9c3d69100"
    url "https://releases.mondoo.com/cnquery/9.2.3/cnquery_9.2.3_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

