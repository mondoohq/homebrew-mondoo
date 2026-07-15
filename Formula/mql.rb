
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Mql < Formula
  desc "MQL - Asset Inventory Query Language"
  homepage "https://mondoo.com"
  version "13.29.1"
  

  if Hardware::CPU.intel?
    sha256 "a99e4f05607be3b6f19119ad857c4c75fea33295449bd550560ceaad96f51db6"
    url "https://releases.mondoo.com/mql/13.29.1/mql_13.29.1_darwin_amd64.tar.gz"
  else
    sha256 "4a76dd1078f3e9468dc9edba960f23e7c7680bde2f1920076aa602162ffb0b4e"
    url "https://releases.mondoo.com/mql/13.29.1/mql_13.29.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mql"
  end

  test do
    system "#{bin}/mql --version"
  end
end

