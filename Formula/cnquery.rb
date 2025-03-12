
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.45.1"
  

  if Hardware::CPU.intel?
    sha256 "b160fc8d2eee6689166553badd1425610e2dbdc355749366dec87645785a2686"
    url "https://releases.mondoo.com/cnquery/11.45.1/cnquery_11.45.1_darwin_amd64.tar.gz"
  else
    sha256 "cd4e3856dce95f9c01d8cf837050a03514770bf83ca4dba4ae1a642567585ef8"
    url "https://releases.mondoo.com/cnquery/11.45.1/cnquery_11.45.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

