
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Mql < Formula
  desc "MQL - Asset Inventory Query Language"
  homepage "https://mondoo.com"
  version "13.39.0"
  

  if Hardware::CPU.intel?
    sha256 "0a8efd67364776da223ae3a803b2430355d4d09525402c50415d8d91178d2a31"
    url "https://releases.mondoo.com/mql/13.39.0/mql_13.39.0_darwin_amd64.tar.gz"
  else
    sha256 "c490ebec48d43a24f2b8f2cab0043e3b343b8a5ae38fb912e04eeefab37e6adc"
    url "https://releases.mondoo.com/mql/13.39.0/mql_13.39.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mql"
  end

  test do
    system "#{bin}/mql --version"
  end
end

