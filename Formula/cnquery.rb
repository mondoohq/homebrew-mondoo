
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "9.3.3"
  

  if Hardware::CPU.intel?
    sha256 "91a1bb140f352f4c41c72e2f709ab188c1a46fa925e52fd0eba64cbdd1410e7d"
    url "https://releases.mondoo.com/cnquery/9.3.3/cnquery_9.3.3_darwin_amd64.tar.gz"
  else
    sha256 "67671fd36f322b5a17b687d7238fe453fe14496fb5f7f812fbe30032b627d70b"
    url "https://releases.mondoo.com/cnquery/9.3.3/cnquery_9.3.3_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

