
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "9.12.0"
  

  if Hardware::CPU.intel?
    sha256 "8fad4cf80664929aed6d627107e92958108df11a4f54bc1bc5fee0d256b60b72"
    url "https://releases.mondoo.com/cnquery/9.12.0/cnquery_9.12.0_darwin_amd64.tar.gz"
  else
    sha256 "1ea89587064c4aa1fb47f6567629ee91b75a209a867256bd3efc72ed2e16502f"
    url "https://releases.mondoo.com/cnquery/9.12.0/cnquery_9.12.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

