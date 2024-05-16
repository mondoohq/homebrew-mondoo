
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.4.3"
  

  if Hardware::CPU.intel?
    sha256 "c507ec4490eafecdbe4a3664a2430579e75c0d5a55f076fd44a0f4b727ef06e9"
    url "https://releases.mondoo.com/cnquery/11.4.3/cnquery_11.4.3_darwin_amd64.tar.gz"
  else
    sha256 "7669a4a63559d0967b6fafdbab8b396b52ba940ef0cb8f42bd9c9c4c7f626532"
    url "https://releases.mondoo.com/cnquery/11.4.3/cnquery_11.4.3_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

