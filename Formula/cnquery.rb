
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.11.0"
  

  if Hardware::CPU.intel?
    sha256 "5e30d68bdc10d4fc62d53912c8b873c1dd97b0661ff5fa0ae270b0cbaa726c67"
    url "https://releases.mondoo.com/cnquery/11.11.0/cnquery_11.11.0_darwin_amd64.tar.gz"
  else
    sha256 "c0ae6917e7b9355a863ed8055816f9f5938a62da8ccc7bab467fa91efbde8324"
    url "https://releases.mondoo.com/cnquery/11.11.0/cnquery_11.11.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

