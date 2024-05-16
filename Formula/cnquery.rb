
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.4.2"
  

  if Hardware::CPU.intel?
    sha256 "43cb7cc2e93d04f1fc79daf212588bb837b791a1b098c3f95df0d8c937826d92"
    url "https://releases.mondoo.com/cnquery/11.4.2/cnquery_11.4.2_darwin_amd64.tar.gz"
  else
    sha256 "de1215687f8fd7865540ed1d844abe3ba795ab2be9a3740b933337ffe8c769cc"
    url "https://releases.mondoo.com/cnquery/11.4.2/cnquery_11.4.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

