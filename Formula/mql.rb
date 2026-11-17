
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Mql < Formula
  desc "MQL - Asset Inventory Query Language"
  homepage "https://mondoo.com"
  version "14.12.0"
  

  if Hardware::CPU.intel?
    sha256 "ae92f30c226e27082fbd8abdff1b88071c111a64ebc4afb7db5a5f145a957f6e"
    url "https://releases.mondoo.com/mql/14.12.0/mql_14.12.0_darwin_amd64.tar.gz"
  else
    sha256 "c105895fba7051c330a1b300c76b76a8e620e1f6f76bf75fb7b929e20e944e2e"
    url "https://releases.mondoo.com/mql/14.12.0/mql_14.12.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mql"
  end

  test do
    system "#{bin}/mql --version"
  end
end

