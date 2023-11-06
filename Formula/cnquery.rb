
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "9.5.2"
  

  if Hardware::CPU.intel?
    sha256 "f720969fb8e9dad2dbba01ff5445165ac98520c1831346196e3c0dbdb8df9601"
    url "https://releases.mondoo.com/cnquery/9.5.2/cnquery_9.5.2_darwin_amd64.tar.gz"
  else
    sha256 "ca5aefb27ea5ff41891c65915c5f361b97ce2133df09a79ae2873633625c6ca4"
    url "https://releases.mondoo.com/cnquery/9.5.2/cnquery_9.5.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

