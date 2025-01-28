
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.39.0"
  

  if Hardware::CPU.intel?
    sha256 "45b01bbcbf473fd2f9619d04abb76bffa81a876b3f756acc7f99dc1b511e12ae"
    url "https://releases.mondoo.com/cnquery/11.39.0/cnquery_11.39.0_darwin_amd64.tar.gz"
  else
    sha256 "29d0075aa134db3087c687e757d5877d19beb34be31c09b5d205ffa02cb86287"
    url "https://releases.mondoo.com/cnquery/11.39.0/cnquery_11.39.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

