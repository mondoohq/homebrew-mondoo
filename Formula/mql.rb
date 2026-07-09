
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Mql < Formula
  desc "MQL - Asset Inventory Query Language"
  homepage "https://mondoo.com"
  version "13.28.1"
  

  if Hardware::CPU.intel?
    sha256 "6b897ef54e261ebd9cb629581c431ef649581e932a36697e82bdad91d549e08e"
    url "https://releases.mondoo.com/mql/13.28.1/mql_13.28.1_darwin_amd64.tar.gz"
  else
    sha256 "94580d82bc7dcb7c1eed656ec116db1baaa47cac5583b9581217dbe8e63155a1"
    url "https://releases.mondoo.com/mql/13.28.1/mql_13.28.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mql"
  end

  test do
    system "#{bin}/mql --version"
  end
end

