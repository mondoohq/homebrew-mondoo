
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Mql < Formula
  desc "MQL - Asset Inventory Query Language"
  homepage "https://mondoo.com"
  version "13.8.1"
  

  if Hardware::CPU.intel?
    sha256 "16c6385a7aad745818a45749664f4ac5d5edd99a7b4a036a1c5b6f9b5cc5e8ea"
    url "https://releases.mondoo.com/mql/13.8.1/mql_13.8.1_darwin_amd64.tar.gz"
  else
    sha256 "4dba6455dbb51808291517cbc871e9d49a706fdfdaf79aae28d7686976e326a4"
    url "https://releases.mondoo.com/mql/13.8.1/mql_13.8.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mql"
  end

  test do
    system "#{bin}/mql --version"
  end
end

