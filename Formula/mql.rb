
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Mql < Formula
  desc "MQL - Asset Inventory Query Language"
  homepage "https://mondoo.com"
  version "14.8.0"
  

  if Hardware::CPU.intel?
    sha256 "7293dda44b7dd489430c6a5b5de6811483178466206e19adf45d871bb4f1bf16"
    url "https://releases.mondoo.com/mql/14.8.0/mql_14.8.0_darwin_amd64.tar.gz"
  else
    sha256 "e6a458305accf7d20632d2b99845486b0721fe7faf5a5df75e9c6aaba4c687c8"
    url "https://releases.mondoo.com/mql/14.8.0/mql_14.8.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mql"
  end

  test do
    system "#{bin}/mql --version"
  end
end

