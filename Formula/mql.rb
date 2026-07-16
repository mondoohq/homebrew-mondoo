
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Mql < Formula
  desc "MQL - Asset Inventory Query Language"
  homepage "https://mondoo.com"
  version "13.29.2"
  

  if Hardware::CPU.intel?
    sha256 "2f4d072f6c9e579ef6d7e2f64b22e1ae98e5e0f136f6bdb57aa705825776094b"
    url "https://releases.mondoo.com/mql/13.29.2/mql_13.29.2_darwin_amd64.tar.gz"
  else
    sha256 "a16082d7784c34d60fdd1e1003c747da466286f3cbdab32187699e3908e3f735"
    url "https://releases.mondoo.com/mql/13.29.2/mql_13.29.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mql"
  end

  test do
    system "#{bin}/mql --version"
  end
end

