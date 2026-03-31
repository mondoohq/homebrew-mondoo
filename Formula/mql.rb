
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Mql < Formula
  desc "MQL - Asset Inventory Query Language"
  homepage "https://mondoo.com"
  version "13.3.0"
  

  if Hardware::CPU.intel?
    sha256 "f70635d3f05598c59967ab5ff22cb042e274eb308ad394f7122040fec632bd8f"
    url "https://releases.mondoo.com/mql/13.3.0/mql_13.3.0_darwin_amd64.tar.gz"
  else
    sha256 "32d3f683d448db422cc6343498075e51713fb6d9fbdcafcf3c976e54ee676036"
    url "https://releases.mondoo.com/mql/13.3.0/mql_13.3.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mql"
  end

  test do
    system "#{bin}/mql --version"
  end
end

