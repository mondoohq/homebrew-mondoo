
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Mql < Formula
  desc "MQL - Asset Inventory Query Language"
  homepage "https://mondoo.com"
  version "13.12.0"
  

  if Hardware::CPU.intel?
    sha256 "c71a9e788e582d805e91c41b01e0b99ef9da2008243a8a4255cc0c0564e0ee4e"
    url "https://releases.mondoo.com/mql/13.12.0/mql_13.12.0_darwin_amd64.tar.gz"
  else
    sha256 "2f60c6203ce8cdbd21fdcf23aad0ce7c65fdd6468575dc1421a13366f3887b93"
    url "https://releases.mondoo.com/mql/13.12.0/mql_13.12.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mql"
  end

  test do
    system "#{bin}/mql --version"
  end
end

