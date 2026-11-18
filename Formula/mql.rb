
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Mql < Formula
  desc "MQL - Asset Inventory Query Language"
  homepage "https://mondoo.com"
  version "14.12.1"
  

  if Hardware::CPU.intel?
    sha256 "9651ddfbc99aa28aede7f31c2abe8a477db8fcaff0b465201396c036e8ff5a0c"
    url "https://releases.mondoo.com/mql/14.12.1/mql_14.12.1_darwin_amd64.tar.gz"
  else
    sha256 "3fed6ec0bfebe3132eeff0f3d47d5eba2da578242ef4eee051f82e38aa472ad1"
    url "https://releases.mondoo.com/mql/14.12.1/mql_14.12.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mql"
  end

  test do
    system "#{bin}/mql --version"
  end
end

