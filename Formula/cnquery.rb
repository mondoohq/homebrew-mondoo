
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.12.0"
  

  if Hardware::CPU.intel?
    sha256 "74e2c2951796745f53759989ffb181c7f7268f4682d44c59622c3728c54310db"
    url "https://releases.mondoo.com/cnquery/11.12.0/cnquery_11.12.0_darwin_amd64.tar.gz"
  else
    sha256 "9e500bef4592c741be4422c34e487412cdbb0f780b747d2398de6c3fb7ed0c48"
    url "https://releases.mondoo.com/cnquery/11.12.0/cnquery_11.12.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

