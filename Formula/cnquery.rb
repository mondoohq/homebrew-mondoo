
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.56.0"
  

  if Hardware::CPU.intel?
    sha256 "09c8d434718510fc306e2c1927c3314e5d8530d98bbbdfa23c892c872f00db5a"
    url "https://releases.mondoo.com/cnquery/11.56.0/cnquery_11.56.0_darwin_amd64.tar.gz"
  else
    sha256 "5066aae9cee1b067c383c0539ba53180a067b1acff4e62bff4a86a5277fb0f76"
    url "https://releases.mondoo.com/cnquery/11.56.0/cnquery_11.56.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

