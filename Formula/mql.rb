
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Mql < Formula
  desc "MQL - Asset Inventory Query Language"
  homepage "https://mondoo.com"
  version "13.22.0"
  

  if Hardware::CPU.intel?
    sha256 "5f80acd4959cf2c0b6198d5613b3fd0264996d68586d75a06c97c5d47a1e90a8"
    url "https://releases.mondoo.com/mql/13.22.0/mql_13.22.0_darwin_amd64.tar.gz"
  else
    sha256 "bb8ec6281b0bf260f4d0236591b98b9ced7a3dbae1f38708ffc865e292b58a2a"
    url "https://releases.mondoo.com/mql/13.22.0/mql_13.22.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mql"
  end

  test do
    system "#{bin}/mql --version"
  end
end

