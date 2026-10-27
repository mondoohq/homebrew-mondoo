
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Mql < Formula
  desc "MQL - Asset Inventory Query Language"
  homepage "https://mondoo.com"
  version "14.9.0"
  

  if Hardware::CPU.intel?
    sha256 "2945bfa7538a21ee0eb4df533a160475005b1fc4ce44c294a978877a1906d9dd"
    url "https://releases.mondoo.com/mql/14.9.0/mql_14.9.0_darwin_amd64.tar.gz"
  else
    sha256 "670f65c28fa58d38055a0ece90e13d48f7905cab33515d7062f9485edb87cc7a"
    url "https://releases.mondoo.com/mql/14.9.0/mql_14.9.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mql"
  end

  test do
    system "#{bin}/mql --version"
  end
end

