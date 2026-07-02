
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Mql < Formula
  desc "MQL - Asset Inventory Query Language"
  homepage "https://mondoo.com"
  version "13.27.2"
  

  if Hardware::CPU.intel?
    sha256 "a7cccb746cb17316294df0b6be767de4b67c10313ee963a0451c752bf1c02182"
    url "https://releases.mondoo.com/mql/13.27.2/mql_13.27.2_darwin_amd64.tar.gz"
  else
    sha256 "ec91ea18c06b94b574b330c5b26379211b3e2f98f8d579e331aadbfdc55a4245"
    url "https://releases.mondoo.com/mql/13.27.2/mql_13.27.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mql"
  end

  test do
    system "#{bin}/mql --version"
  end
end

