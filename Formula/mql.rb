
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Mql < Formula
  desc "MQL - Asset Inventory Query Language"
  homepage "https://mondoo.com"
  version "13.10.0"
  

  if Hardware::CPU.intel?
    sha256 "7e9cba2820e724f0229c73f88753dedd50efdaf9d2466f601e8fa14be22b0bd1"
    url "https://releases.mondoo.com/mql/13.10.0/mql_13.10.0_darwin_amd64.tar.gz"
  else
    sha256 "8c02df3eaa6cc70ecf76278ab91c687bd16247202c0046b95329edfb5ae96197"
    url "https://releases.mondoo.com/mql/13.10.0/mql_13.10.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mql"
  end

  test do
    system "#{bin}/mql --version"
  end
end

