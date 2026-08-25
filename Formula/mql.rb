
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Mql < Formula
  desc "MQL - Asset Inventory Query Language"
  homepage "https://mondoo.com"
  version "13.36.0"
  

  if Hardware::CPU.intel?
    sha256 "94795570bbe585844ec2ab77c32d334c9c902e5b846d68ebfbe3856cf4e041de"
    url "https://releases.mondoo.com/mql/13.36.0/mql_13.36.0_darwin_amd64.tar.gz"
  else
    sha256 "552993f3df16d6365d5e9505946d9de9486ba6097a69512bef29f2ed311499dd"
    url "https://releases.mondoo.com/mql/13.36.0/mql_13.36.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mql"
  end

  test do
    system "#{bin}/mql --version"
  end
end

