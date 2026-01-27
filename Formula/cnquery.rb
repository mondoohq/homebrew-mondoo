
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "12.20.0"
  

  if Hardware::CPU.intel?
    sha256 "c236eceb04af6e8b0393df2d0cf5e99b48af792493cd1ffa940f7d793a639144"
    url "https://releases.mondoo.com/cnquery/12.20.0/cnquery_12.20.0_darwin_amd64.tar.gz"
  else
    sha256 "4634fb21d028cc00ff7b8067d296d2121830585d68e7c017024498bca9fc046c"
    url "https://releases.mondoo.com/cnquery/12.20.0/cnquery_12.20.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

