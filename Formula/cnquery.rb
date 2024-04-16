
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "10.12.2"
  

  if Hardware::CPU.intel?
    sha256 "13106356bbf9afaf755c04017bd6dfd4d07e280966417df4ea18f24e659b433d"
    url "https://releases.mondoo.com/cnquery/10.12.2/cnquery_10.12.2_darwin_amd64.tar.gz"
  else
    sha256 "cd3f17d7dbfce9f406af1750fd44e41d8dd06406ccc4b4aaaaf486ca1fd843f9"
    url "https://releases.mondoo.com/cnquery/10.12.2/cnquery_10.12.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

