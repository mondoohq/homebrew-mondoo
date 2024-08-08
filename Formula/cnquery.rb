
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.16.1"
  

  if Hardware::CPU.intel?
    sha256 "c098d158ccef945a1bc06e327406357189441e191799bf3896e39170fbd86c16"
    url "https://releases.mondoo.com/cnquery/11.16.1/cnquery_11.16.1_darwin_amd64.tar.gz"
  else
    sha256 "b05335d18498db994a3df25aa5c9bb544a63c9da228e554a1d31aa746ec7635d"
    url "https://releases.mondoo.com/cnquery/11.16.1/cnquery_11.16.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

