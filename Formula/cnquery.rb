
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "9.9.0"
  

  if Hardware::CPU.intel?
    sha256 "f76f9e69673f0d13456a33baac6125ca700352dfce4bf247ea7f38f53758a573"
    url "https://releases.mondoo.com/cnquery/9.9.0/cnquery_9.9.0_darwin_amd64.tar.gz"
  else
    sha256 "a3a266ded9426af0c783781cd8a99ed622d9a0ecc57db7130283f9bae6057e75"
    url "https://releases.mondoo.com/cnquery/9.9.0/cnquery_9.9.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

