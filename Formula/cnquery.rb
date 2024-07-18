
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.13.2"
  

  if Hardware::CPU.intel?
    sha256 "a738fb475ff577424cbbb113f408da2cf2ce2daf15faf38d2c95a7cc986458f0"
    url "https://releases.mondoo.com/cnquery/11.13.2/cnquery_11.13.2_darwin_amd64.tar.gz"
  else
    sha256 "771c16a377c885e824efe625997f60432e0feb09be38c739ccd5f78edc2925b9"
    url "https://releases.mondoo.com/cnquery/11.13.2/cnquery_11.13.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

