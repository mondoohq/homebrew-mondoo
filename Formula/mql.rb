
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Mql < Formula
  desc "MQL - Asset Inventory Query Language"
  homepage "https://mondoo.com"
  version "13.4.0"
  

  if Hardware::CPU.intel?
    sha256 "0074f5f3fdb56573a3f8c97dcedabe5181fadf6552cc7f6c044d88b6cc8736d1"
    url "https://releases.mondoo.com/mql/13.4.0/mql_13.4.0_darwin_amd64.tar.gz"
  else
    sha256 "a603bba6fba86316a7a7f857a07112762a11bd5048aff33e4ae43ed6ae89dbf8"
    url "https://releases.mondoo.com/mql/13.4.0/mql_13.4.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mql"
  end

  test do
    system "#{bin}/mql --version"
  end
end

