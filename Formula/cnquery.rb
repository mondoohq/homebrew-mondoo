
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "10.8.2"
  

  if Hardware::CPU.intel?
    sha256 "3f8927355be80ee803d83ca51f2dbb59b38d844b1f9405e6537c91ab60786d35"
    url "https://releases.mondoo.com/cnquery/10.8.2/cnquery_10.8.2_darwin_amd64.tar.gz"
  else
    sha256 "cc9ace8e2bc1b4264e3084e6941d6217704ff733949f26172128afaf3f260dbe"
    url "https://releases.mondoo.com/cnquery/10.8.2/cnquery_10.8.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

