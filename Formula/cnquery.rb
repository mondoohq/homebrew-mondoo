
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "9.12.3"
  

  if Hardware::CPU.intel?
    sha256 "d77234d9b3ab675c728bd4a3449a1fe10fa72e489255363c165d3219a093f622"
    url "https://releases.mondoo.com/cnquery/9.12.3/cnquery_9.12.3_darwin_amd64.tar.gz"
  else
    sha256 "7ea738bb4a7c1425de280ca6884a069cdc4103fef94894abee4408f46d93d990"
    url "https://releases.mondoo.com/cnquery/9.12.3/cnquery_9.12.3_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

