
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.31.0"
  

  if Hardware::CPU.intel?
    sha256 "054be024d9a17eca33ddc65d90932e8ac97022f0fa9ffab9d9266fda590f8ccd"
    url "https://releases.mondoo.com/cnquery/11.31.0/cnquery_11.31.0_darwin_amd64.tar.gz"
  else
    sha256 "7059a8f92569d51bb8fff052498401e83c460853d98af1a7dbf9aa51c337ef43"
    url "https://releases.mondoo.com/cnquery/11.31.0/cnquery_11.31.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

