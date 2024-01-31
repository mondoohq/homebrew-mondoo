
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "10.1.3"
  

  if Hardware::CPU.intel?
    sha256 "56b30c7f30a9728a87bf9badcb7a4351103312cd1d7d75ec805ece715c7987cb"
    url "https://releases.mondoo.com/cnquery/10.1.3/cnquery_10.1.3_darwin_amd64.tar.gz"
  else
    sha256 "ca253f46cf3a8242f179deb076e206b732db43cc15074d8051bcb287c2e3404e"
    url "https://releases.mondoo.com/cnquery/10.1.3/cnquery_10.1.3_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

