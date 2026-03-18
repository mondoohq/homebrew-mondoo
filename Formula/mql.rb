
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Mql < Formula
  desc "MQL - Asset Inventory Query Language"
  homepage "https://mondoo.com"
  version "13.1.1"
  

  if Hardware::CPU.intel?
    sha256 "f4fd3c4ff0903c246d0be4a6a99dbf6b4290bf5df3ea76ceed2c58612ded9e8c"
    url "https://releases.mondoo.com/mql/13.1.1/mql_13.1.1_darwin_amd64.tar.gz"
  else
    sha256 "afa1573bd9cc5eaa8e993f1df38aeb941d3ce5f9a2ee5021846e7a8d950495c1"
    url "https://releases.mondoo.com/mql/13.1.1/mql_13.1.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mql"
  end

  test do
    system "#{bin}/mql --version"
  end
end

