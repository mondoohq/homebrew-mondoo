
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.32.0"
  

  if Hardware::CPU.intel?
    sha256 "b2adb805dacf1ea7b64b2703a0b78660feb462a0d090f1f35c44174e33a75d7c"
    url "https://releases.mondoo.com/cnquery/11.32.0/cnquery_11.32.0_darwin_amd64.tar.gz"
  else
    sha256 "d75a205e38d7a17cbefe19ea5b929f80c23a0741b32b99790d56bcfb0b52d6e9"
    url "https://releases.mondoo.com/cnquery/11.32.0/cnquery_11.32.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

