
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Mql < Formula
  desc "MQL - Asset Inventory Query Language"
  homepage "https://mondoo.com"
  version "13.3.4"
  

  if Hardware::CPU.intel?
    sha256 "98216ea00a28d38f05a395c5a4438345e711f0c5977f7ba66dcb05705f253359"
    url "https://releases.mondoo.com/mql/13.3.4/mql_13.3.4_darwin_amd64.tar.gz"
  else
    sha256 "b60c217b45234a6183cb8939dcbbe4f523b1ca9d0d2081ed9e89df90c4660393"
    url "https://releases.mondoo.com/mql/13.3.4/mql_13.3.4_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mql"
  end

  test do
    system "#{bin}/mql --version"
  end
end

