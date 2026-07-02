
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Mql < Formula
  desc "MQL - Asset Inventory Query Language"
  homepage "https://mondoo.com"
  version "13.27.4"
  

  if Hardware::CPU.intel?
    sha256 "d51699147f8b11f2e3a93112641e549d0440f5b364d0ce4e3aae32450c5149fe"
    url "https://releases.mondoo.com/mql/13.27.4/mql_13.27.4_darwin_amd64.tar.gz"
  else
    sha256 "262cdacddab7097471b13a759a665cef9e9171fe51b8dce85fca52347eda28e3"
    url "https://releases.mondoo.com/mql/13.27.4/mql_13.27.4_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mql"
  end

  test do
    system "#{bin}/mql --version"
  end
end

