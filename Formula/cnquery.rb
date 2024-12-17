
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.35.0"
  

  if Hardware::CPU.intel?
    sha256 "38a6d06a21a8708a2db4af5074709ac30321ffea6b3428b1d9ccc67b5950daac"
    url "https://releases.mondoo.com/cnquery/11.35.0/cnquery_11.35.0_darwin_amd64.tar.gz"
  else
    sha256 "27ed22d0f93f9afbe8a3714491afdea460c3daa2da2bc36ecb0dc0690a764c85"
    url "https://releases.mondoo.com/cnquery/11.35.0/cnquery_11.35.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

