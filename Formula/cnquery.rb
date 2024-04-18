
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.0.2"
  

  if Hardware::CPU.intel?
    sha256 "9facd1bb786f095f7f345e84836105774feff9df181406b4cd0f497bb244f359"
    url "https://releases.mondoo.com/cnquery/11.0.2/cnquery_11.0.2_darwin_amd64.tar.gz"
  else
    sha256 "660b115830a2e31610ac86e72dcd2bcf9d888a420b5cba5d39a1e5dca4b413b9"
    url "https://releases.mondoo.com/cnquery/11.0.2/cnquery_11.0.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

