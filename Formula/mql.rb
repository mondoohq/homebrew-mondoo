
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Mql < Formula
  desc "MQL - Asset Inventory Query Language"
  homepage "https://mondoo.com"
  version "14.0.0"
  

  if Hardware::CPU.intel?
    sha256 "034b8a00b9e0242d810ee9d1f76124e96856cc005b0b5b7675017f7efc2bb68c"
    url "https://releases.mondoo.com/mql/14.0.0/mql_14.0.0_darwin_amd64.tar.gz"
  else
    sha256 "27100537438c86da59909bad7982bc3e27073835af96afb653dfd6f172eab72a"
    url "https://releases.mondoo.com/mql/14.0.0/mql_14.0.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mql"
  end

  test do
    system "#{bin}/mql --version"
  end
end

