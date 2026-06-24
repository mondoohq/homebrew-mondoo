
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Mql < Formula
  desc "MQL - Asset Inventory Query Language"
  homepage "https://mondoo.com"
  version "13.24.1"
  

  if Hardware::CPU.intel?
    sha256 "976906af3e583233d6cc4a127921a059d4390639ee147a79b4bad699f477bd45"
    url "https://releases.mondoo.com/mql/13.24.1/mql_13.24.1_darwin_amd64.tar.gz"
  else
    sha256 "47da9ec2832d947fbae2f3149372fac2545c25b242b8dd264cb21a3ce574aff3"
    url "https://releases.mondoo.com/mql/13.24.1/mql_13.24.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mql"
  end

  test do
    system "#{bin}/mql --version"
  end
end

