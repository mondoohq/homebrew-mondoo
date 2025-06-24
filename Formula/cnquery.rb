
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.60.0"
  

  if Hardware::CPU.intel?
    sha256 "53ae0b90f9fc7e5fb72231f1b75ecc484188fd653634280aa93730425ff685f8"
    url "https://releases.mondoo.com/cnquery/11.60.0/cnquery_11.60.0_darwin_amd64.tar.gz"
  else
    sha256 "cc4817784dbffd2f0ad8efd73ef9947645c8046406c419117de59ce69a06ff6e"
    url "https://releases.mondoo.com/cnquery/11.60.0/cnquery_11.60.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

