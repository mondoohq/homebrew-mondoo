
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "12.20.1"
  

  if Hardware::CPU.intel?
    sha256 "ca4775e53c20c65f747da0f550d9a0c500ec0c90542414c94573a81192865867"
    url "https://releases.mondoo.com/cnquery/12.20.1/cnquery_12.20.1_darwin_amd64.tar.gz"
  else
    sha256 "007af6b1f06d1c5154cdc72dc3ee8f341e2870491bdb2030de26cabd174f62d6"
    url "https://releases.mondoo.com/cnquery/12.20.1/cnquery_12.20.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

