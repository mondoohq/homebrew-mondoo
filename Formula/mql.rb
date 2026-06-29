
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Mql < Formula
  desc "MQL - Asset Inventory Query Language"
  homepage "https://mondoo.com"
  version "13.25.0"
  

  if Hardware::CPU.intel?
    sha256 "7787a29ddef3b2773ed70a180792b52e536a7050f38530b12e8ab2b618d768f3"
    url "https://releases.mondoo.com/mql/13.25.0/mql_13.25.0_darwin_amd64.tar.gz"
  else
    sha256 "5db82b3aeb10917156ad0976bae6ed2a2fa4a8e02e5e9f81e6c808ba64043331"
    url "https://releases.mondoo.com/mql/13.25.0/mql_13.25.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mql"
  end

  test do
    system "#{bin}/mql --version"
  end
end

