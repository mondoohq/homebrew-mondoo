
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "9.3.2"
  

  if Hardware::CPU.intel?
    sha256 "2d6f745aada0deb7e6378deccd96a566c4ea88ec5c5dba29f07d8cd482b8b66a"
    url "https://releases.mondoo.com/cnquery/9.3.2/cnquery_9.3.2_darwin_amd64.tar.gz"
  else
    sha256 "d3cc2035dafd3e12a032f48d6fee29c34d5c8251e0a0658b6e20860bea395d36"
    url "https://releases.mondoo.com/cnquery/9.3.2/cnquery_9.3.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

