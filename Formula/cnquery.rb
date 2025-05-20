
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.55.0"
  

  if Hardware::CPU.intel?
    sha256 "0d8c5b376ff93a18a0bb27e5427b4eafe4808590c3de05fb2a9df4fb6660c110"
    url "https://releases.mondoo.com/cnquery/11.55.0/cnquery_11.55.0_darwin_amd64.tar.gz"
  else
    sha256 "c0712371fdb310a0723bac241e7bd3328bae43e9b4f3f4363125851c8a725a98"
    url "https://releases.mondoo.com/cnquery/11.55.0/cnquery_11.55.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

