
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Mql < Formula
  desc "MQL - Asset Inventory Query Language"
  homepage "https://mondoo.com"
  version "13.35.0"
  

  if Hardware::CPU.intel?
    sha256 "a2dd854e42e940c372fcae34d3100f8f7626453d1187c6f47683ff093e187b2f"
    url "https://releases.mondoo.com/mql/13.35.0/mql_13.35.0_darwin_amd64.tar.gz"
  else
    sha256 "90d6afd47eb6b956f1e123713e3a799e1d3108cb7257f857fc841143c4af00ba"
    url "https://releases.mondoo.com/mql/13.35.0/mql_13.35.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mql"
  end

  test do
    system "#{bin}/mql --version"
  end
end

