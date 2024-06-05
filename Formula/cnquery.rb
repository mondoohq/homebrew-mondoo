
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.7.2"
  

  if Hardware::CPU.intel?
    sha256 "dd962b564f05a985dc5237af20fa2ca4199af0b6245e266af0e96bc6adf175dd"
    url "https://releases.mondoo.com/cnquery/11.7.2/cnquery_11.7.2_darwin_amd64.tar.gz"
  else
    sha256 "33dbd90a90196b5181c83d914795b89e88a8eaaa632e68510545f47878913292"
    url "https://releases.mondoo.com/cnquery/11.7.2/cnquery_11.7.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

