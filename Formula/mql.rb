
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Mql < Formula
  desc "MQL - Asset Inventory Query Language"
  homepage "https://mondoo.com"
  version "13.0.1"
  

  if Hardware::CPU.intel?
    sha256 "5a362a3fb60291782bbe500825f7db50ad5fde17657a6a9374630489d34803ea"
    url "https://releases.mondoo.com/mql/13.0.1/mql_13.0.1_darwin_amd64.tar.gz"
  else
    sha256 "8f0d67c43b14a5aa65f868795e70b79a73a4b1a07ac0d7e6a7b434d43d95fa3a"
    url "https://releases.mondoo.com/mql/13.0.1/mql_13.0.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mql"
  end

  test do
    system "#{bin}/mql --version"
  end
end

