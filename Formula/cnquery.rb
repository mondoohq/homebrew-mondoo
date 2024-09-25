
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.23.1"
  

  if Hardware::CPU.intel?
    sha256 "9031c4fb8bb9221103e7e0c38b52f355722312e4e62f329962785c951fb2dfe9"
    url "https://releases.mondoo.com/cnquery/11.23.1/cnquery_11.23.1_darwin_amd64.tar.gz"
  else
    sha256 "1de6f3815cebbe3dae5d34a71f4b2da4bf06fd0146b9ef5d62b4e9133353ed0b"
    url "https://releases.mondoo.com/cnquery/11.23.1/cnquery_11.23.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

