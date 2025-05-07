
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.53.2"
  

  if Hardware::CPU.intel?
    sha256 "2390629ee4d55989dfb8970d2fa9db45794d685f62ee5c11b3ee22c6391e88a1"
    url "https://releases.mondoo.com/cnquery/11.53.2/cnquery_11.53.2_darwin_amd64.tar.gz"
  else
    sha256 "f59d9451c29b7b5b362c6264969712a8f1eeb3413466efc99e86ed3a314a34bd"
    url "https://releases.mondoo.com/cnquery/11.53.2/cnquery_11.53.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

