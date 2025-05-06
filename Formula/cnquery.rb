
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.53.0"
  

  if Hardware::CPU.intel?
    sha256 "982adf9c733ebd4476a1baddd8b954607b69363b9351f51f00e65a733ffd1643"
    url "https://releases.mondoo.com/cnquery/11.53.0/cnquery_11.53.0_darwin_amd64.tar.gz"
  else
    sha256 "25a8af60f431d4d6115d876442600154559a9081e8ce85ec7c81e84488db5bac"
    url "https://releases.mondoo.com/cnquery/11.53.0/cnquery_11.53.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

