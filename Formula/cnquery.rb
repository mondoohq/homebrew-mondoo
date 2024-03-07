
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "10.6.1"
  

  if Hardware::CPU.intel?
    sha256 "a1562e817344611d38ed78e4031cbd75b3475c4248f99dc9544d419b2bfaf769"
    url "https://releases.mondoo.com/cnquery/10.6.1/cnquery_10.6.1_darwin_amd64.tar.gz"
  else
    sha256 "9f297b7fad3aa40ee694813ed40d675511820e8caaf6450753561ba55ab3832c"
    url "https://releases.mondoo.com/cnquery/10.6.1/cnquery_10.6.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

